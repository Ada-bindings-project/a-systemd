--  Provides an Ada-binding to th systemd utitilites
--
private with Interfaces.C;
package Systemd is
   Systemd_ERROR : exception;
   type Clockid_T is new Integer;
   type Sd_Event_Destroy_T is new Integer;
   type Sd_Bus_Destroy_T is new Integer;

private
   procedure Retcode_2_Exception (Code : Interfaces.C.Int);
end Systemd;
