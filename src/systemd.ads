--  Provides an Ada-binding to th systemd utitilites
--
private with Interfaces.C;
package Systemd is
   Systemd_ERROR : exception;
private
   procedure Retcode_2_Exception (Code : Interfaces.C.Int);
end Systemd;
