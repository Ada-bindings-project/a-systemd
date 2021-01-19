private package Systemd.Low_Level.Linker_Options is
--  Add a list of libraries required to link.
   pragma Linker_Options ("-L" & "/lib/x86_64-linux-gnu");
   pragma Linker_Options ("-l" & "systemd");
end Systemd.Low_Level.Linker_Options;
