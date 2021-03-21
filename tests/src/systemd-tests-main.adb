with Systemd.Daemon;
with Systemd.Id128;
with Interfaces.C;
with Ada.Text_IO;
with Systemd.Journals;
with GNAT.Traceback.Symbolic;
with GNAT.Exception_Traces;
with Systemd.Bus;
procedure Systemd.Tests.Main is
   B : Systemd.Bus.Sd_Bus;
begin
   GNAT.Exception_Traces.Trace_On (GNAT.Exception_Traces.Every_Raise);
   GNAT.Exception_Traces.Set_Trace_Decorator (GNAT.Traceback.Symbolic.Symbolic_Traceback_No_Hex'Access);
   Ada.Text_IO.Put_Line ("Daemon.Booted     => " & Daemon.Booted'Img);
   Ada.Text_IO.Put_Line ("Id128.Randomize   => " & Id128.Image (Id128.Randomize));
   Ada.Text_IO.Put_Line ("Id128.Get_Machine => " & Id128.Image (Id128.Get_Machine));
   Ada.Text_IO.Put_Line ("Id128.Null_Id128  => " & Id128.Image (Id128.Null_Id128));
   Ada.Text_IO.Put_Line ("Id128.All_Id128   => " & Id128.Image (Id128.All_Id128));
   Systemd.Daemon.Notify (State => "READY=1");
   Systemd.Journals.Print (Systemd.Journals.LOG_INFO, "Test");
   Systemd.Journals.Print_With_Location (Systemd.Journals.LOG_INFO, Format => "Bugger off");
   B.Default;

   --  Ada.Text_IO.Put_Line (Systemd.Id128.Image (Systemd.Id128.Get_Invocation));
   --  Ada.Text_IO.Put_Line (Systemd.Id128.Image (Systemd.Id128.Get_Machine_App_Specific));
   --  Ada.Text_IO.Put_Line (Systemd.Id128.Image (Systemd.Id128.Get_Boot_App_Specific));
end ;

