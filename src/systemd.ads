--  Provides an Ada-binding to th systemd utitilites
--
private with Interfaces.C;
private with Ada.Unchecked_Conversion;
private with System;
package Systemd is
   Systemd_ERROR : exception;
   type Clockid_T is new Integer;
   type Sd_Event_Destroy_T is new Integer;
   type Sd_Bus_Destroy_T is new Integer;

   type Destroy_T is new Integer;
private
   procedure Retcode_2_Exception (Code : Interfaces.C.Int);

   type Int_Access is access all Interfaces.C.Int with Storage_Size => 0;
   function Address_As_Int_Access is new Ada.Unchecked_Conversion (System.Address, Int_Access);
end Systemd;
