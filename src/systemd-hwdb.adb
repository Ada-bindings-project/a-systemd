pragma Ada_2012;
package body Systemd.Hwdb is
   use Systemd.Low_Level;
   ---------
   -- Get --
   ---------

   function Get (Hwdb : Sd_Hwdb; Modalias : String; Key : String) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get unimplemented");
      return raise Program_Error with "Unimplemented function Get";
   end Get;

   ----------
   -- Seek --
   ----------

   procedure Seek (Hwdb : Sd_Hwdb; Modalias : String) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Seek unimplemented");
      raise Program_Error with "Unimplemented procedure Seek";
   end Seek;

   ---------------
   -- Enumerate --
   ---------------

   procedure Enumerate
     (Hwdb : Sd_Hwdb; Key : System.Address; Value : System.Address)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Enumerate unimplemented");
      raise Program_Error with "Unimplemented procedure Enumerate";
   end Enumerate;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Db : in out Sd_Hwdb) is
   begin
      Retcode_2_Exception(Systemd_Sd_Hwdb_H.Sd_Hwdb_New(Db.Impl'Address));
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Db : in out Sd_Hwdb) is
   begin
      Db.Impl := Systemd_Sd_Hwdb_H.Sd_Hwdb_Unref (Db.Impl);

   end Finalize;

end Systemd.Hwdb;
