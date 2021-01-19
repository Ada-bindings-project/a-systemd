pragma Ada_2012;
with Interfaces.C.Strings;
with ADa.Unchecked_Conversion;
with System;
package body Systemd.Id128 is
   use Systemd.Low_Level.Systemd_Sd_Id128_H;
   use type Interfaces.C.Int;
   pragma Warnings (Off, "variable ""Ret"" is read but never assigned");
   ---------------
   -- To_String --
   ---------------
   function To_Chars_Ptr is new ADA.Unchecked_Conversion (SysteM.Address, Interfaces.C.Strings.Chars_Ptr);
   function To_String (Id : Id128_T) return String is
      Buffer : aliased String (1 .. SD_ID128_STRING_MAX);
      use Interfaces.C.Strings;
   begin
      return Buffer (Buffer'First .. Natural (Strlen (Sd_Id128_To_String (Id => Sd_Id128_T (Id),
                                                                          S  => To_Chars_Ptr (Buffer'Address)))));
   end To_String;

   -----------------
   -- From_String --
   -----------------

   function From_String (S : String) return Id128_T is
   begin
      return Ret : Id128_T do
         Retcode_2_Exception (Sd_Id128_From_String (To_Chars_Ptr (S'Address), Sd_Id128_T (Ret)'Unrestricted_Access));
      end return;
   end From_String;

   ---------------
   -- Randomize --
   ---------------

   function Randomize return Id128_T is
   begin
      return Ret : Id128_T do
         Retcode_2_Exception (Sd_Id128_Randomize (Sd_Id128_T (Ret)'Unrestricted_Access));
      end return;
   end Randomize;

   -----------------
   -- Get_Machine --
   -----------------

   function Get_Machine return Id128_T is
   begin
      return Ret : Id128_T do
         Retcode_2_Exception (Sd_Id128_Get_Machine (Sd_Id128_T (Ret)'Unrestricted_Access));
      end return;
   end Get_Machine;

   --------------
   -- Get_Boot --
   --------------

   function Get_Boot return Id128_T is
   begin
      return Ret : Id128_T do
         Retcode_2_Exception (Sd_Id128_Get_Boot (Sd_Id128_T (Ret)'Unrestricted_Access));
      end return;
   end Get_Boot;

   --------------------
   -- Get_Invocation --
   --------------------

   function Get_Invocation return Id128_T is
   begin
      return Ret : Id128_T do
         Retcode_2_Exception (Sd_Id128_Get_Invocation (Sd_Id128_T (Ret)'Unrestricted_Access));
      end return;
   end Get_Invocation;

   ------------------------------
   -- Get_Machine_App_Specific --
   ------------------------------

   function Get_Machine_App_Specific (App_Id : Id128_T) return Id128_T is
   begin
      return Ret : Id128_T do
         Retcode_2_Exception (Sd_Id128_Get_Machine_App_Specific (Sd_Id128_T (App_Id), Sd_Id128_T (Ret)'Unrestricted_Access));
      end return;
   end Get_Machine_App_Specific;

   ---------------------------
   -- Get_Boot_App_Specific --
   ---------------------------

   function Get_Boot_App_Specific (App_Id : Id128_T) return Id128_T is
   begin
      return Ret : Id128_T do
         Retcode_2_Exception (Sd_Id128_Get_Boot_App_Specific (Sd_Id128_T (App_Id), Sd_Id128_T (Ret)'Unrestricted_Access));
      end return;
   end Get_Boot_App_Specific;

   ---------
   -- "=" --
   ---------

   function "=" (A : Id128_T; B : Id128_T) return Boolean is
      use Interfaces.C;
   begin
      return A.Bytes = B.Bytes;
   end "=";

end Systemd.Id128;
