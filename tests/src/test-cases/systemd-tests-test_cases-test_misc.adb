pragma Ada_2012;
with GNAT.Source_Info;
package body Systemd.Tests.Test_Cases.Test_Misc is

   ----------
   -- Name --
   ----------
   Test_Name : constant String := GNAT.Source_Info.Enclosing_Entity;

   function Name (Test : Test_Case) return Message_String is
   begin
      return Format (Test_Name);
   end Name;

   procedure Test_1 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
   end;

   procedure Register_Tests (Test : in out Test_Case) is separate;
end Systemd.Tests.Test_Cases.Test_Misc;
