private with Systemd.Low_Level.Systemd_Sd_Id128_H;
with Ada.Containers;
package Systemd.Id128 is

   type Id128_T is private;

   function Image (Id : Id128_T) return String;

   function Value (S : String) return Id128_T;

   function Randomize return Id128_T;

   function Get_Machine return Id128_T;

   function Get_Boot return Id128_T;

   function Get_Invocation  return Id128_T;

   function Get_Machine_App_Specific (App_Id : Id128_T)return Id128_T;

   function Get_Boot_App_Specific (App_Id : Id128_T) return Id128_T;


   function "=" (A : Id128_T; B : Id128_T) return Boolean;

   Null_Id128 : constant Id128_T;
   All_Id128  : constant Id128_T;

   function Is_Null (A : Id128_T) return Boolean is
     (A = Null_Id128);

   function Is_All (A : Id128_T) return Boolean is
     (A = All_Id128);
   function Hash ( Item : Id128_T) return Ada.Containers.Hash_Type;

private
   type Id128_T is new Systemd.Low_Level.Systemd_Sd_Id128_H.Sd_Id128_T;
   Null_Id128 : constant Id128_T := (Discr => 0, Bytes => (others => 16#00#));
   All_Id128 : constant Id128_T := (Discr => 0, Bytes => (others => 16#FF#));

end Systemd.Id128;
