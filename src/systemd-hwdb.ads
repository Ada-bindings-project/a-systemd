with GNAT.Strings;
private with Systemd.Low_Level.Systemd_Sd_Hwdb_H;
private with Ada.Finalization;
with System;
package Systemd.Hwdb is
   type Sd_Hwdb is tagged limited private;

   function Get
     (Hwdb     : Sd_Hwdb;
      Modalias : String;
      Key      : String) return String;

   procedure Seek (Hwdb :  Sd_Hwdb; Modalias : String);

   type Element_Type is record
      Key   : GNAT.Strings.String_Access;
      Value : GNAT.Strings.String_Access;
   end record;

   type Cursor (<>) is private;

   type Idb_Iterator (<>) is limited private with
     Iterable => (First        => First_Cursor,
                  Next         => Advance,
                  Has_Element  => Cursor_Has_Element,
                  Element      => Get_Element);

   function First_Cursor (Cont : Idb_Iterator) return Cursor;
   function Advance (Cont : Idb_Iterator; Position : Cursor) return Cursor;
   function Cursor_Has_Element (Cont : Idb_Iterator; Position : Cursor) return Boolean;
   function Get_Element (Cont : Idb_Iterator; Position : Cursor) return Element_Type;
   --  function Enumerate
   --    (Hwdb   : Sd_Hwdb;
   --     Keys   : String) return Idb_Iterator;
   --
private
   type Cursor  is record
      null;
   end record;
   type Idb_Iterator is new Ada.Finalization.Limited_Controlled with record
      null;
   end record;
   type Sd_Hwdb_Access is access all Systemd.Low_Level.Systemd_Sd_Hwdb_H.Sd_Hwdb with Storage_Size => 0;
   type Sd_Hwdb is new Ada.Finalization.Limited_Controlled with record
      Impl : aliased Sd_Hwdb_Access;
   end record;
   procedure Initialize (Db : in out Sd_Hwdb);
   procedure Finalize   (Db : in out Sd_Hwdb);
end Systemd.Hwdb;
