with Systemd.Daemon;
with Interfaces.C;
with Ada.Text_IO;
procedure Systemd.Tests.Main is
begin
   Ada.Text_IO.Put_Line (Daemon.Booted'Img);
end ;
