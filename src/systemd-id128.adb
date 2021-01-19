pragma Ada_2012;
with Interfaces.C.Strings;
with ADa.Unchecked_Conversion;
with System;
package body Systemd.Id128 is
   use Systemd.Low_Level.Systemd_Sd_Id128_H;
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
      pragma Compile_Time_Warning (Standard.True, "From_String unimplemented");
      return raise Program_Error with "Unimplemented function From_String";
   end From_String;

   ---------------
   -- Randomize --
   ---------------

   function Randomize return Id128_T is
      R : Interfaces.C.Int;
   begin
      return Ret : Id128_T do
         R := Sd_Id128_Randomize (Sd_Id128_T (Ret)'Unrestricted_Access);
      end return;
   end Randomize;

   -----------------
   -- Get_Machine --
   -----------------

   function Get_Machine return Id128_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Machine unimplemented");
      return raise Program_Error with "Unimplemented function Get_Machine";
   end Get_Machine;

   --------------
   -- Get_Boot --
   --------------

   function Get_Boot return Id128_T is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Boot unimplemented");
      return raise Program_Error with "Unimplemented function Get_Boot";
   end Get_Boot;

   --------------------
   -- Get_Invocation --
   --------------------

   function Get_Invocation return Id128_T is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Invocation unimplemented");
      return raise Program_Error with "Unimplemented function Get_Invocation";
   end Get_Invocation;

   ------------------------------
   -- Get_Machine_App_Specific --
   ------------------------------

   function Get_Machine_App_Specific (App_Id : Id128_T) return Id128_T is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Machine_App_Specific unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Get_Machine_App_Specific";
   end Get_Machine_App_Specific;

   ---------------------------
   -- Get_Boot_App_Specific --
   ---------------------------

   function Get_Boot_App_Specific (App_Id : Id128_T) return Id128_T is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Boot_App_Specific unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Get_Boot_App_Specific";
   end Get_Boot_App_Specific;

   ---------
   -- "=" --
   ---------

   function "=" (A : Id128_T; B : Id128_T) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, """="" unimplemented");
      return raise Program_Error with "Unimplemented function ""=""";
   end "=";

end Systemd.Id128;
