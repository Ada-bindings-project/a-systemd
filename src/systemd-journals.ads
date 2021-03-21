pragma Ada_2012;

with Interfaces.C; use Interfaces.C;
with System;

with Systemd.Id128;
with Gnat.Source_Info;
private with Systemd.Low_Level.Systemd_Sd_Journal_H;

package Systemd.Journals is

   type Priority_Type is (LOG_EMERG,    --  system is unusable
                          LOG_ALERT,    --  action must be taken immediately
                          LOG_CRIT,     --  critical conditions
                          LOG_ERR,      --  error conditions
                          LOG_WARNING,  --  warning conditions
                          LOG_NOTICE,   --  normal but significant condition
                          LOG_INFO,     --  informational
                          LOG_DEBUG);   --  debug-level messages'
   -- maps to priorities in syslog.h

   function Print (Priority : Priority_Type;
                   Format   : String ) return Int;

   procedure Print (Priority : Priority_Type;
                    Format   : String );

   function Printv
     (Priority : Priority_Type;
      Format   : String;
      Ap       : access System.Address) return Int;
   procedure Printv
     (Priority : Priority_Type;
      Format   : String;
      Ap       : access System.Address);

   function Send (Format : String) return Int;
   procedure Send (Format : String);

   function Sendv (Iov : access constant System.Address; N : Int) return Int;

   function Perror (Message : String) return Int;
   procedure Perror (Message : String);


   function Print_With_Location
     (Priority : Priority_Type;
      File     : String  := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity;
      Format   : String) return Int;
   procedure Print_With_Location
     (Priority : Priority_Type;
      File     : String := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String := Gnat.Source_Info.Enclosing_Entity;
      Format   : String);

   function Printv_With_Location
     (Priority : Priority_Type;
      File     : String := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String := Gnat.Source_Info.Enclosing_Entity;
      Format   : String;
      Ap       : access System.Address) return Int;
   procedure Printv_With_Location
     (Priority : Priority_Type;
      File     : String  := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity;
      Format   : String;
      Ap       : access System.Address);

   function Send_With_Location
     (File     : String  := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity;
      Format   : String ) return Int;
   procedure Send_With_Location
     (File     : String  := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity;
      Format   : String);

   function Sendv_With_Location
     (File     : String  := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity;
      Iov      : access constant System.Address;
      N        : Int) return Int;
   procedure Sendv_With_Location
     (File     : String  := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity;
      Iov      : access constant System.Address;
      N        : Int);

   function Perror_With_Location
     (File     : String := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String := Gnat.Source_Info.Enclosing_Entity;
      Message  : String) return Int;
   procedure Perror_With_Location
     (File     : String := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String := Gnat.Source_Info.Enclosing_Entity;
      Message  : String);

   --  #########################################################################
   --  Browse journal stream
private

   type Sd_Journal_Access is access all Systemd.Low_Level.Systemd_Sd_Journal_H.Sd_Journal with Storage_Size => 0;
   type Sd_Journal is tagged record
      Impl : aliased Sd_Journal_Access;
   end record;

   --  implicitly add code location to messages sent, if this is enabled
   function Stream_Fd
     (Identifier   : String;
      Priority     : Int;
      Level_Prefix : Int) return Int;


   --  Open flags
   --  deprecated name
   --  Wakeup event types
   procedure  Open (Self : in out Sd_Journal; Flags : Int);

   procedure Open_Directory
     (Self   : in out Sd_Journal;
      Path   : String;
      Flags  : Int);

   procedure Open_Directory_Fd
     (Self   : in out Sd_Journal;
      Fd     : Int;
      Flags  : Int);

   procedure Open_Files
     (Self   : in out Sd_Journal;
      Paths  : System.Address;
      Flags  : Int);

   procedure Open_Files_Fd
     (Self   : in out Sd_Journal;
      Fds    : access Int;
      N_Fds  : Unsigned;
      Flags  : Int);



   procedure Close (Self : in out Sd_Journal);

   function Previous (Self : in out Sd_Journal) return Int;

   function Next (Self : in out Sd_Journal) return Int;

   function Previous_Skip (Self : in out Sd_Journal; Skip : Unsigned_Long) return Int;

   function Next_Skip (Self : in out Sd_Journal; Skip : Unsigned_Long) return Int;

   function Get_Realtime_Usec (Self : in out Sd_Journal; Ret : access Unsigned_Long) return Int;

   function Get_Monotonic_Usec
     (Self        : in out Sd_Journal;
      Ret         : access Unsigned_Long;
      Ret_Boot_Id : out Systemd.Id128.Id128_T) return Int;

   procedure Set_Data_Threshold (Self : in out Sd_Journal; Sz : Unsigned_Long);

   function Get_Data_Threshold (Self : in out Sd_Journal) return Unsigned_Long;

   function Get_Data
     (J     : in out Sd_Journal;
      Field : String;
      Data  : System.Address;
      L     : access Unsigned_Long) return Int;

   function Enumerate_Data
     (J    : in out Sd_Journal;
      Data : System.Address;
      L    : access Unsigned_Long) return Int;

   procedure Restart_Data (J : access Sd_Journal);

   function Add_Match
     (J    : in out Sd_Journal;
      Data : System.Address;
      Size : Unsigned_Long) return Int;

   function Add_Disjunction (J : in out Sd_Journal) return Int;

   function Add_Conjunction (J : in out Sd_Journal) return Int;

   procedure Flush_Matches (J : in out Sd_Journal);

   procedure Seek_Head (J : in out Sd_Journal);

   procedure Seek_Tail (J : in out Sd_Journal);

   procedure Seek_Monotonic_Usec
     (J       : in out Sd_Journal;
      Boot_Id : Systemd.Id128.Id128_T;
      Usec    : Unsigned_Long);

   procedure Seek_Realtime_Usec (J : in out Sd_Journal; Usec : Unsigned_Long);

   procedure Seek_Cursor (J : in out Sd_Journal; Cursor : String);

   function Get_Cursor (J : in out Sd_Journal) return String;

   function Test_Cursor (J : in out Sd_Journal; Cursor : String) return Boolean;

   function Get_Cutoff_Realtime_Usec
     (J    : in out Sd_Journal;
      From : access Unsigned_Long;
      To   : access Unsigned_Long) return Int;

   function Get_Cutoff_Monotonic_Usec
     (J       : in out Sd_Journal;
      Boot_Id : Systemd.Id128.Id128_T;
      From    : access Unsigned_Long;
      To      : access Unsigned_Long) return Int;

   function Get_Usage (J : in out Sd_Journal; Bytes : access Unsigned_Long) return Int;

   function Query_Unique (J : in out Sd_Journal; Field : String) return Int;

   function Enumerate_Unique
     (J    : in out Sd_Journal;
      Data : System.Address;
      L    : access Unsigned_Long) return Int;

   procedure Restart_Unique (J : in out Sd_Journal);

   function Enumerate_Fields (J : in out Sd_Journal; Field : System.Address) return Int;

   procedure Restart_Fields (J : in out Sd_Journal);

   function Get_Fd (J : in out Sd_Journal) return Int;

   function Get_Events (J : in out Sd_Journal) return Int;

   function Get_Timeout (J : in out Sd_Journal) return Duration;

   function Process (J : in out Sd_Journal) return Int;

   procedure Wait (J : in out Sd_Journal; Timeout : Duration);

   function Reliable_Fd (J : in out Sd_Journal) return Int;

   function Get_Catalog (J : in out Sd_Journal) return String;

   function Get_Catalog_For_Message_Id (Id : Systemd.Id128.Id128_T) return String;

   function Has_Runtime_Files (J : Sd_Journal) return Boolean;

   function Has_Persistent_Files (J : Sd_Journal) return Boolean;

   procedure Closep (P : in out Sd_Journal);


end Systemd.Journals;
