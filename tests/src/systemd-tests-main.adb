with Systemd.Daemon;
with Systemd.Id128;
with Interfaces.C;
with Ada.Text_IO;
procedure Systemd.Tests.Main is
begin
   Ada.Text_IO.Put_Line ("Daemon.Booted             => "&Daemon.Booted'Img);
   Ada.Text_IO.Put_Line ("Id128.Randomize   => "& Id128.Image (Id128.Randomize));
   Ada.Text_IO.Put_Line ("Id128.Get_Machine => "& Id128.image (Id128.Get_Machine));
   Ada.Text_IO.Put_Line ("Id128.Null_Id128  => "& Id128.image (Id128.Null_Id128));
   Ada.Text_IO.Put_Line ("Id128.All_Id128   => "& Id128.Image (Id128.All_Id128));
   SYstemd.Daemon.Notify (State => "READY=1");
   -- Ada.Text_IO.Put_Line (Systemd.Id128.image (Systemd.Id128.Get_Invocation));
   -- Ada.Text_IO.Put_Line (Systemd.Id128.Image (Systemd.Id128.Get_Machine_App_Specific));
   --  Ada.Text_IO.Put_Line (Systemd.Id128.image (Systemd.Id128.Get_Boot_App_Specific));
end ;
