with Systemd.Daemon;
with Systemd.Id128;
with Interfaces.C;
with Ada.Text_IO;
procedure Systemd.Tests.Main is
begin
   Ada.Text_IO.Put_Line (Daemon.Booted'Img);
   Ada.Text_IO.Put_Line (Systemd.Id128.To_String (Systemd.Id128.Randomize));
   Ada.Text_IO.Put_Line (Systemd.Id128.To_String (Systemd.Id128.Get_Machine));
   Ada.Text_IO.Put_Line (Systemd.Id128.To_String (Systemd.Id128.Null_Id128));
   Ada.Text_IO.Put_Line (Systemd.Id128.To_String (Systemd.Id128.All_Id128));
   Ada.Text_IO.Put_Line (Systemd.Id128.To_String (Systemd.Id128.Get_Invocation));
   --  Ada.Text_IO.Put_Line (Systemd.Id128.To_String (Systemd.Id128.Get_Machine_App_Specific));
   --  Ada.Text_IO.Put_Line (Systemd.Id128.To_String (Systemd.Id128.Get_Boot_App_Specific));
end ;
