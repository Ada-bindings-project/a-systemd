pragma Ada_2012;
with Interfaces.C.Strings;
package body Systemd is
   use Interfaces.C.Strings;
   use Interfaces.C;

   function Strerror (Errno : Int) return Interfaces.C.Strings.Chars_Ptr
     with Import => True,
     Convention => C,
     Link_Name => "strerror";

   -------------------------
   -- Retcode_2_Exception --
   -------------------------
   use type Interfaces.C.Int;
   procedure Retcode_2_Exception (Code : Interfaces.C.Int) is
   begin
      if Code < 0 then
         raise Systemd_ERROR with Value (Strerror (Code));
      end if;
   end Retcode_2_Exception;

end Systemd;
