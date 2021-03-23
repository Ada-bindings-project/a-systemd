with AUnit.Test_Cases;
package Systemd.Tests.Test_Cases.Test_Misc is
   use AUnit;
   type Test_Case is new AUnit.Test_Cases.Test_Case with record
      null;
   end record;

   function Name (Test : Test_Case) return Message_String;
   procedure Register_Tests (Test : in out Test_Case);

end  SYstemd.Tests.Test_Cases.Test_Misc;
