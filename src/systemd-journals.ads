pragma Ada_2012;
with Interfaces.C; use Interfaces.C;
with System;

with Systemd.Id128;
private with Systemd.Low_Level.Systemd_Sd_Journal_H;
package Systemd.journals is

   function print (priority : int; format : String  -- , ...
      ) return int;

   function printv
     (priority : int;
      format : String;
      ap : access System.Address) return int;

   function send (format : String  -- , ...
      ) return int;

   function sendv (iov : access constant System.Address; n : int) return int;

   function perror (message : String) return int;

  --  Used by the macros below. You probably don't want to call this directly.
   function print_with_location
     (priority : int;
      file : String;
      line : String;
      func : String;
      format : String  -- , ...
      ) return int;

   function printv_with_location
     (priority : int;
      file : String;
      line : String;
      func : String;
      format : String;
      ap : access System.Address) return int;

   function send_with_location
     (file : String;
      line : String;
      func : String;
      format : String  -- , ...
      ) return int;

   function sendv_with_location
     (file : String;
      line : String;
      func : String;
      iov : access constant System.Address;
      n : int) return int;

   function perror_with_location
     (file : String;
      line : String;
      func : String;
      message : String) return int;

  --  implicitly add code location to messages sent, if this is enabled
   function stream_fd
     (identifier : String;
      priority : int;
      level_prefix : int) return int;

  --  Browse journal stream
   type sd_journal is tagged private;   -- incomplete struct

  --  Open flags
  --  deprecated name
  --  Wakeup event types
   function open (ret : System.Address; flags : int) return int;

   function open_directory
     (ret : System.Address;
      path : String;
      flags : int) return int;

   function open_directory_fd
     (ret : System.Address;
      fd : int;
      flags : int) return int;

   function open_files
     (ret : System.Address;
      paths : System.Address;
      flags : int) return int;

   function open_files_fd
     (ret : System.Address;
      fds : access int;
      n_fds : unsigned;
      flags : int) return int;

  --  deprecated
   function open_container
     (ret : System.Address;
      machine : String;
      flags : int) return int;

   procedure close (j : access sd_journal);

   function previous (j : access sd_journal) return int;

   function next (j : access sd_journal) return int;

   function previous_skip (j : access sd_journal; skip : unsigned_long) return int;

   function next_skip (j : access sd_journal; skip : unsigned_long) return int;

   function get_realtime_usec (j : access sd_journal; ret : access unsigned_long) return int;

   function get_monotonic_usec
     (j : access sd_journal;
      Ret : access Unsigned_Long;
      Ret_Boot_Id : out Systemd.Id128.Id128_T) return Int;

   function set_data_threshold (j : access sd_journal; sz : unsigned_long) return int;

   function Get_Data_Threshold (J : access Sd_Journal; Sz : access Unsigned_Long) return Int;

   function get_data
     (j : access sd_journal;
      field : String;
      data : System.Address;
      l : access unsigned_long) return int;

   function enumerate_data
     (j : access sd_journal;
      data : System.Address;
      l : access unsigned_long) return int;

   procedure restart_data (j : access sd_journal);

   function add_match
     (j : access sd_journal;
      data : System.Address;
      size : unsigned_long) return int;

   function add_disjunction (j : access sd_journal) return int;

   function add_conjunction (j : access sd_journal) return int;

   procedure flush_matches (j : access sd_journal);

   function seek_head (j : access sd_journal) return int;

   function seek_tail (j : access sd_journal) return int;

   function seek_monotonic_usec
     (j : access sd_journal;
      boot_id : Systemd.Id128.id128_t;
      usec : unsigned_long) return int;

   function seek_realtime_usec (j : access sd_journal; usec : unsigned_long) return int;

   function seek_cursor (j : access sd_journal; cursor : String) return int;

   function get_cursor (j : access sd_journal; cursor : System.Address) return int;

   function test_cursor (j : access sd_journal; cursor : String) return int;

   function get_cutoff_realtime_usec
     (j : access sd_journal;
      from : access unsigned_long;
      to : access unsigned_long) return int;

   function get_cutoff_monotonic_usec
     (j : access sd_journal;
      boot_id : Systemd.Id128.id128_t;
      from : access unsigned_long;
      to : access unsigned_long) return int;

   function get_usage (j : access sd_journal; bytes : access unsigned_long) return int;

   function query_unique (j : access sd_journal; field : String) return int;

   function enumerate_unique
     (j : access sd_journal;
      data : System.Address;
      l : access unsigned_long) return int;

   procedure restart_unique (j : access sd_journal);

   function enumerate_fields (j : access sd_journal; field : System.Address) return int;

   procedure restart_fields (j : access sd_journal);

   function get_fd (j : access sd_journal) return int;

   function get_events (j : access sd_journal) return int;

   function get_timeout (j : access sd_journal; timeout_usec : access unsigned_long) return int;

   function process (j : access sd_journal) return int;

   function wait (j : access sd_journal; timeout_usec : unsigned_long) return int;

   function reliable_fd (j : access sd_journal) return int;

   function get_catalog (j : access sd_journal; text : System.Address) return int;

   function get_catalog_for_message_id (id : Systemd.Id128.id128_t; text : System.Address) return int;

   function has_runtime_files (j : access sd_journal) return int;

   function has_persistent_files (j : access sd_journal) return int;

   procedure closep (p : System.Address);
private
   type Sd_Journal_Access is access all Systemd.Low_Level.Systemd_Sd_Journal_H.Sd_Journal with Storage_Size => 0;
   type Sd_Journal is tagged record
      Impl : aliased Sd_Journal_Access;
   end record;

end Systemd.journals;
