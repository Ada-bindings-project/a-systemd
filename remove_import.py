import GPS
import re
path = GPS.File("systemd-event.ads").name()

with open(path) as inf:
    buffer = inf.read()

matcher = re.compile("^(.*?)(with Import => True.*?)(;.*)", re.M+re.DOTALL)
matches = matcher.match(buffer)

while matches:
    buffer = matches.group(1)+matches.group(3)
    matches = matcher.match(buffer)

#matcher = re.compile("^(.*?)( -- /usr/include/.+?)(;.*)", re.M+re.DOTALL)
#matches = matcher.match(buffer)

#while matches:
#    buffer = matches.group(1)+matches.group(3)
#    matches = matcher.match(buffer)

with open(path, "w") as outf:
    outf.write(buffer)
