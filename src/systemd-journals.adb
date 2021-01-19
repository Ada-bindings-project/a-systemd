pragma Ada_2012;
package body Systemd.journals is

   -----------
   -- print --
   -----------

   function print (priority : int; format : String) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "print unimplemented");
      return raise Program_Error with "Unimplemented function print";
   end print;

   ------------
   -- printv --
   ------------

   function printv
     (priority : int; format : String; ap : access System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "printv unimplemented");
      return raise Program_Error with "Unimplemented function printv";
   end printv;

   ----------
   -- send --
   ----------

   function send (format : String) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "send unimplemented");
      return raise Program_Error with "Unimplemented function send";
   end send;

   -----------
   -- sendv --
   -----------

   function sendv (iov : access constant System.Address; n : int) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "sendv unimplemented");
      return raise Program_Error with "Unimplemented function sendv";
   end sendv;

   ------------
   -- perror --
   ------------

   function perror (message : String) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "perror unimplemented");
      return raise Program_Error with "Unimplemented function perror";
   end perror;

   -------------------------
   -- print_with_location --
   -------------------------

   function print_with_location
     (priority : int; file : String; line : String; func : String;
      format   : String) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "print_with_location unimplemented");
      return
        raise Program_Error with "Unimplemented function print_with_location";
   end print_with_location;

   --------------------------
   -- printv_with_location --
   --------------------------

   function printv_with_location
     (priority : int; file : String; line : String; func : String;
      format   : String; ap : access System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "printv_with_location unimplemented");
      return
        raise Program_Error with "Unimplemented function printv_with_location";
   end printv_with_location;

   ------------------------
   -- send_with_location --
   ------------------------

   function send_with_location
     (file : String; line : String; func : String; format : String) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "send_with_location unimplemented");
      return
        raise Program_Error with "Unimplemented function send_with_location";
   end send_with_location;

   -------------------------
   -- sendv_with_location --
   -------------------------

   function sendv_with_location
     (file : String; line : String; func : String;
      iov  : access constant System.Address; n : int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sendv_with_location unimplemented");
      return
        raise Program_Error with "Unimplemented function sendv_with_location";
   end sendv_with_location;

   --------------------------
   -- perror_with_location --
   --------------------------

   function perror_with_location
     (file : String; line : String; func : String; message : String) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "perror_with_location unimplemented");
      return
        raise Program_Error with "Unimplemented function perror_with_location";
   end perror_with_location;

   ---------------
   -- stream_fd --
   ---------------

   function stream_fd
     (identifier : String; priority : int; level_prefix : int) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "stream_fd unimplemented");
      return raise Program_Error with "Unimplemented function stream_fd";
   end stream_fd;

   ----------
   -- open --
   ----------

   function open (ret : System.Address; flags : int) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "open unimplemented");
      return raise Program_Error with "Unimplemented function open";
   end open;

   --------------------
   -- open_directory --
   --------------------

   function open_directory
     (ret : System.Address; path : String; flags : int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "open_directory unimplemented");
      return raise Program_Error with "Unimplemented function open_directory";
   end open_directory;

   -----------------------
   -- open_directory_fd --
   -----------------------

   function open_directory_fd
     (ret : System.Address; fd : int; flags : int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "open_directory_fd unimplemented");
      return
        raise Program_Error with "Unimplemented function open_directory_fd";
   end open_directory_fd;

   ----------------
   -- open_files --
   ----------------

   function open_files
     (ret : System.Address; paths : System.Address; flags : int) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "open_files unimplemented");
      return raise Program_Error with "Unimplemented function open_files";
   end open_files;

   -------------------
   -- open_files_fd --
   -------------------

   function open_files_fd
     (ret : System.Address; fds : access int; n_fds : unsigned; flags : int)
      return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "open_files_fd unimplemented");
      return raise Program_Error with "Unimplemented function open_files_fd";
   end open_files_fd;

   --------------------
   -- open_container --
   --------------------

   function open_container
     (ret : System.Address; machine : String; flags : int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "open_container unimplemented");
      return raise Program_Error with "Unimplemented function open_container";
   end open_container;

   -----------
   -- close --
   -----------

   procedure close (j : access sd_journal) is
   begin
      pragma Compile_Time_Warning (Standard.True, "close unimplemented");
      raise Program_Error with "Unimplemented procedure close";
   end close;

   --------------
   -- previous --
   --------------

   function previous (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "previous unimplemented");
      return raise Program_Error with "Unimplemented function previous";
   end previous;

   ----------
   -- next --
   ----------

   function next (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "next unimplemented");
      return raise Program_Error with "Unimplemented function next";
   end next;

   -------------------
   -- previous_skip --
   -------------------

   function previous_skip
     (j : access sd_journal; skip : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "previous_skip unimplemented");
      return raise Program_Error with "Unimplemented function previous_skip";
   end previous_skip;

   ---------------
   -- next_skip --
   ---------------

   function next_skip (j : access sd_journal; skip : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "next_skip unimplemented");
      return raise Program_Error with "Unimplemented function next_skip";
   end next_skip;

   -----------------------
   -- get_realtime_usec --
   -----------------------

   function get_realtime_usec
     (j : access sd_journal; ret : access unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_realtime_usec unimplemented");
      return
        raise Program_Error with "Unimplemented function get_realtime_usec";
   end get_realtime_usec;

   ------------------------
   -- get_monotonic_usec --
   ------------------------

   function get_monotonic_usec
     (j           :     access sd_journal; Ret : access Unsigned_Long;
      Ret_Boot_Id : out Systemd.Id128.Id128_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_monotonic_usec unimplemented");
      return
        raise Program_Error with "Unimplemented function get_monotonic_usec";
   end get_monotonic_usec;

   ------------------------
   -- set_data_threshold --
   ------------------------

   function set_data_threshold
     (j : access sd_journal; sz : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "set_data_threshold unimplemented");
      return
        raise Program_Error with "Unimplemented function set_data_threshold";
   end set_data_threshold;

   ------------------------
   -- Get_Data_Threshold --
   ------------------------

   function Get_Data_Threshold
     (J : access Sd_Journal; Sz : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Data_Threshold unimplemented");
      return
        raise Program_Error with "Unimplemented function Get_Data_Threshold";
   end Get_Data_Threshold;

   --------------
   -- get_data --
   --------------

   function get_data
     (j : access sd_journal; field : String; data : System.Address;
      l : access unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_data unimplemented");
      return raise Program_Error with "Unimplemented function get_data";
   end get_data;

   --------------------
   -- enumerate_data --
   --------------------

   function enumerate_data
     (j : access sd_journal; data : System.Address; l : access unsigned_long)
      return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "enumerate_data unimplemented");
      return raise Program_Error with "Unimplemented function enumerate_data";
   end enumerate_data;

   ------------------
   -- restart_data --
   ------------------

   procedure restart_data (j : access sd_journal) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "restart_data unimplemented");
      raise Program_Error with "Unimplemented procedure restart_data";
   end restart_data;

   ---------------
   -- add_match --
   ---------------

   function add_match
     (j : access sd_journal; data : System.Address; size : unsigned_long)
      return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "add_match unimplemented");
      return raise Program_Error with "Unimplemented function add_match";
   end add_match;

   ---------------------
   -- add_disjunction --
   ---------------------

   function add_disjunction (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "add_disjunction unimplemented");
      return raise Program_Error with "Unimplemented function add_disjunction";
   end add_disjunction;

   ---------------------
   -- add_conjunction --
   ---------------------

   function add_conjunction (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "add_conjunction unimplemented");
      return raise Program_Error with "Unimplemented function add_conjunction";
   end add_conjunction;

   -------------------
   -- flush_matches --
   -------------------

   procedure flush_matches (j : access sd_journal) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "flush_matches unimplemented");
      raise Program_Error with "Unimplemented procedure flush_matches";
   end flush_matches;

   ---------------
   -- seek_head --
   ---------------

   function seek_head (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "seek_head unimplemented");
      return raise Program_Error with "Unimplemented function seek_head";
   end seek_head;

   ---------------
   -- seek_tail --
   ---------------

   function seek_tail (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "seek_tail unimplemented");
      return raise Program_Error with "Unimplemented function seek_tail";
   end seek_tail;

   -------------------------
   -- seek_monotonic_usec --
   -------------------------

   function seek_monotonic_usec
     (j    : access sd_journal; boot_id : Systemd.Id128.id128_t;
      usec : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "seek_monotonic_usec unimplemented");
      return
        raise Program_Error with "Unimplemented function seek_monotonic_usec";
   end seek_monotonic_usec;

   ------------------------
   -- seek_realtime_usec --
   ------------------------

   function seek_realtime_usec
     (j : access sd_journal; usec : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "seek_realtime_usec unimplemented");
      return
        raise Program_Error with "Unimplemented function seek_realtime_usec";
   end seek_realtime_usec;

   -----------------
   -- seek_cursor --
   -----------------

   function seek_cursor (j : access sd_journal; cursor : String) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "seek_cursor unimplemented");
      return raise Program_Error with "Unimplemented function seek_cursor";
   end seek_cursor;

   ----------------
   -- get_cursor --
   ----------------

   function get_cursor
     (j : access sd_journal; cursor : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_cursor unimplemented");
      return raise Program_Error with "Unimplemented function get_cursor";
   end get_cursor;

   -----------------
   -- test_cursor --
   -----------------

   function test_cursor (j : access sd_journal; cursor : String) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "test_cursor unimplemented");
      return raise Program_Error with "Unimplemented function test_cursor";
   end test_cursor;

   ------------------------------
   -- get_cutoff_realtime_usec --
   ------------------------------

   function get_cutoff_realtime_usec
     (j  : access sd_journal; from : access unsigned_long;
      to : access unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_cutoff_realtime_usec unimplemented");
      return
        raise Program_Error
          with "Unimplemented function get_cutoff_realtime_usec";
   end get_cutoff_realtime_usec;

   -------------------------------
   -- get_cutoff_monotonic_usec --
   -------------------------------

   function get_cutoff_monotonic_usec
     (j    : access sd_journal; boot_id : Systemd.Id128.id128_t;
      from : access unsigned_long; to : access unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_cutoff_monotonic_usec unimplemented");
      return
        raise Program_Error
          with "Unimplemented function get_cutoff_monotonic_usec";
   end get_cutoff_monotonic_usec;

   ---------------
   -- get_usage --
   ---------------

   function get_usage
     (j : access sd_journal; bytes : access unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_usage unimplemented");
      return raise Program_Error with "Unimplemented function get_usage";
   end get_usage;

   ------------------
   -- query_unique --
   ------------------

   function query_unique (j : access sd_journal; field : String) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "query_unique unimplemented");
      return raise Program_Error with "Unimplemented function query_unique";
   end query_unique;

   ----------------------
   -- enumerate_unique --
   ----------------------

   function enumerate_unique
     (j : access sd_journal; data : System.Address; l : access unsigned_long)
      return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "enumerate_unique unimplemented");
      return
        raise Program_Error with "Unimplemented function enumerate_unique";
   end enumerate_unique;

   --------------------
   -- restart_unique --
   --------------------

   procedure restart_unique (j : access sd_journal) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "restart_unique unimplemented");
      raise Program_Error with "Unimplemented procedure restart_unique";
   end restart_unique;

   ----------------------
   -- enumerate_fields --
   ----------------------

   function enumerate_fields
     (j : access sd_journal; field : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "enumerate_fields unimplemented");
      return
        raise Program_Error with "Unimplemented function enumerate_fields";
   end enumerate_fields;

   --------------------
   -- restart_fields --
   --------------------

   procedure restart_fields (j : access sd_journal) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "restart_fields unimplemented");
      raise Program_Error with "Unimplemented procedure restart_fields";
   end restart_fields;

   ------------
   -- get_fd --
   ------------

   function get_fd (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_fd unimplemented");
      return raise Program_Error with "Unimplemented function get_fd";
   end get_fd;

   ----------------
   -- get_events --
   ----------------

   function get_events (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_events unimplemented");
      return raise Program_Error with "Unimplemented function get_events";
   end get_events;

   -----------------
   -- get_timeout --
   -----------------

   function get_timeout
     (j : access sd_journal; timeout_usec : access unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_timeout unimplemented");
      return raise Program_Error with "Unimplemented function get_timeout";
   end get_timeout;

   -------------
   -- process --
   -------------

   function process (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "process unimplemented");
      return raise Program_Error with "Unimplemented function process";
   end process;

   ----------
   -- wait --
   ----------

   function wait
     (j : access sd_journal; timeout_usec : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "wait unimplemented");
      return raise Program_Error with "Unimplemented function wait";
   end wait;

   -----------------
   -- reliable_fd --
   -----------------

   function reliable_fd (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "reliable_fd unimplemented");
      return raise Program_Error with "Unimplemented function reliable_fd";
   end reliable_fd;

   -----------------
   -- get_catalog --
   -----------------

   function get_catalog
     (j : access sd_journal; text : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "get_catalog unimplemented");
      return raise Program_Error with "Unimplemented function get_catalog";
   end get_catalog;

   --------------------------------
   -- get_catalog_for_message_id --
   --------------------------------

   function get_catalog_for_message_id
     (id : Systemd.Id128.id128_t; text : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "get_catalog_for_message_id unimplemented");
      return
        raise Program_Error
          with "Unimplemented function get_catalog_for_message_id";
   end get_catalog_for_message_id;

   -----------------------
   -- has_runtime_files --
   -----------------------

   function has_runtime_files (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "has_runtime_files unimplemented");
      return
        raise Program_Error with "Unimplemented function has_runtime_files";
   end has_runtime_files;

   --------------------------
   -- has_persistent_files --
   --------------------------

   function has_persistent_files (j : access sd_journal) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "has_persistent_files unimplemented");
      return
        raise Program_Error with "Unimplemented function has_persistent_files";
   end has_persistent_files;

   ------------
   -- closep --
   ------------

   procedure closep (p : System.Address) is
   begin
      pragma Compile_Time_Warning (Standard.True, "closep unimplemented");
      raise Program_Error with "Unimplemented procedure closep";
   end closep;

end Systemd.journals;
