with Systemd.Daemon;
with Systemd.Id128;
with Interfaces.C;
with Ada.Text_IO;
procedure Systemd.Tests.Main is
begin
   Ada.Text_IO.Put_Line (Daemon.Booted'Img);
   Ada.Text_IO.Put_Line (Systemd.Id128.To_String (Systemd.Id128.Randomize));
end ;
