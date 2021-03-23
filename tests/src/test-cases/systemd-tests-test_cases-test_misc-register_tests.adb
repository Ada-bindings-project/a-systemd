separate (Systemd.Tests.Test_Cases.Test_Misc)
procedure Register_Tests (Test : in out Test_Case) is
begin
   AUnit.Test_Cases.Registration.Register_Routine (Test, Test_1'Access, "Test_1");
end Register_Tests;
