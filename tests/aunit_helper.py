import GPS
import os
from os.path import *
import re

REGISTER_TEMPLATE = """   AUnit.Test_Cases.Registration.Register_Routine (Test, %(name)s'Access, "%(name)s");"""

TEMPLATE = """separate (%(name)s)
procedure Register_Tests (Test : in out Test_Case) is
begin
%(registrations)s
end Register_Tests;
"""


class Helper:

    def __init__(self):
        self.matcher = re.compile(r"^\s*" +
                                  r"(" +
                                  r"procedure\s+(\w+)\s*\(\w+\s*:\s*in\s+out\s+.*?Test_Case'Class\)\s*is" +
                                  r"|" +
                                  r"package\s+body\s+(\S+)\s+is" +
                                  r")")
        GPS.Hook("file_saved").add(self.on_file_saved)

    def analyse(self, file):
        self.tests = []
        self.name = None
        with open(file.name()) as inf:
            ret = []
            for line in inf:
                matches = self.matcher.match(line)
                if matches:
                    if matches.group(2):
                        self.tests.append(matches.group(2))
                    elif matches.group(3):
                        self.name = matches.group(3)

    def on_file_saved(self, name, file):
        self.name = ""
        name, ext = splitext(file.name())
        register_tests = name + "-register_tests.adb"
        if (ext == ".adb") and exists(register_tests):
                self.analyse(file)
                if self.tests and self.name:
                    registrations = []
                    for name in self.tests:
                        registrations.append(REGISTER_TEMPLATE % {"name": name})
                with open(register_tests, "w") as outf:
                    outf.write(TEMPLATE % {"name": self.name,
                                           "registrations": "\n".join(registrations)})

Helper()
