pragma Ada_2012;
package body Systemd.event is
   pragma Warnings (Off);

   ----------------------
   -- sd_event_default --
   ----------------------

   function sd_event_default (e : System.Address) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_default unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_default";
   end sd_event_default;

   ------------------
   -- sd_event_new --
   ------------------

   function sd_event_new (e : System.Address) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_new unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_new";
   end sd_event_new;

   ------------------
   -- sd_event_ref --
   ------------------

   function sd_event_ref (e : access sd_event) return access sd_event is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_ref unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_ref";
   end sd_event_ref;

   --------------------
   -- sd_event_unref --
   --------------------

   function sd_event_unref (e : access sd_event) return access sd_event is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_unref unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_unref";
   end sd_event_unref;

   ---------------------
   -- sd_event_add_io --
   ---------------------

   function sd_event_add_io
     (e : access sd_event; s : System.Address; fd : int; events : unsigned;
      callback : sd_event_io_handler_t; userdata : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_add_io unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_add_io";
   end sd_event_add_io;

   -----------------------
   -- sd_event_add_time --
   -----------------------

   function sd_event_add_time
     (e        : access sd_event; s : System.Address; clock : clockid_t;
      usec     : unsigned_long; accuracy : unsigned_long;
      callback : sd_event_time_handler_t; userdata : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_add_time unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_add_time";
   end sd_event_add_time;

   -------------------------
   -- sd_event_add_signal --
   -------------------------

   function sd_event_add_signal
     (e        : access sd_event; s : System.Address; sig : int;
      callback : sd_event_signal_handler_t; userdata : System.Address)
      return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_add_signal unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_add_signal";
   end sd_event_add_signal;

   ------------------------
   -- sd_event_add_child --
   ------------------------

   function sd_event_add_child
     (e        : access sd_event; s : System.Address; pid : int; options : int;
      callback : sd_event_child_handler_t; userdata : System.Address)
      return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_add_child unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_add_child";
   end sd_event_add_child;

   --------------------------
   -- sd_event_add_inotify --
   --------------------------

   function sd_event_add_inotify
     (e        : access sd_event; s : System.Address;
      path     : Interfaces.C.Strings.chars_ptr; mask : unsigned;
      callback : sd_event_inotify_handler_t; userdata : System.Address)
      return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_add_inotify unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_add_inotify";
   end sd_event_add_inotify;

   ------------------------
   -- sd_event_add_defer --
   ------------------------

   function sd_event_add_defer
     (e : access sd_event; s : System.Address; callback : sd_event_handler_t;
      userdata : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_add_defer unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_add_defer";
   end sd_event_add_defer;

   -----------------------
   -- sd_event_add_post --
   -----------------------

   function sd_event_add_post
     (e : access sd_event; s : System.Address; callback : sd_event_handler_t;
      userdata : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_add_post unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_add_post";
   end sd_event_add_post;

   -----------------------
   -- sd_event_add_exit --
   -----------------------

   function sd_event_add_exit
     (e : access sd_event; s : System.Address; callback : sd_event_handler_t;
      userdata : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_add_exit unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_add_exit";
   end sd_event_add_exit;

   ----------------------
   -- sd_event_prepare --
   ----------------------

   function sd_event_prepare (e : access sd_event) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_prepare unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_prepare";
   end sd_event_prepare;

   -------------------
   -- sd_event_wait --
   -------------------

   function sd_event_wait
     (e : access sd_event; usec : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_wait unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_wait";
   end sd_event_wait;

   -----------------------
   -- sd_event_dispatch --
   -----------------------

   function sd_event_dispatch (e : access sd_event) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_dispatch unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_dispatch";
   end sd_event_dispatch;

   ------------------
   -- sd_event_run --
   ------------------

   function sd_event_run (e : access sd_event; usec : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_run unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_run";
   end sd_event_run;

   -------------------
   -- sd_event_loop --
   -------------------

   function sd_event_loop (e : access sd_event) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_loop unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_loop";
   end sd_event_loop;

   -------------------
   -- sd_event_exit --
   -------------------

   function sd_event_exit (e : access sd_event; code : int) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_exit unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_exit";
   end sd_event_exit;

   ------------------
   -- sd_event_now --
   ------------------

   function sd_event_now
     (e : access sd_event; clock : clockid_t; usec : access unsigned_long)
      return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_now unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_now";
   end sd_event_now;

   ---------------------
   -- sd_event_get_fd --
   ---------------------

   function sd_event_get_fd (e : access sd_event) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_get_fd unimplemented");
      return raise Program_Error with "Unimplemented function sd_event_get_fd";
   end sd_event_get_fd;

   ------------------------
   -- sd_event_get_state --
   ------------------------

   function sd_event_get_state (e : access sd_event) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_get_state unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_get_state";
   end sd_event_get_state;

   ----------------------
   -- sd_event_get_tid --
   ----------------------

   function sd_event_get_tid (e : access sd_event; tid : access int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_get_tid unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_get_tid";
   end sd_event_get_tid;

   ----------------------------
   -- sd_event_get_exit_code --
   ----------------------------

   function sd_event_get_exit_code
     (e : access sd_event; code : access int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_get_exit_code unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_get_exit_code";
   end sd_event_get_exit_code;

   ---------------------------
   -- sd_event_set_watchdog --
   ---------------------------

   function sd_event_set_watchdog (e : access sd_event; b : int) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_set_watchdog unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_set_watchdog";
   end sd_event_set_watchdog;

   ---------------------------
   -- sd_event_get_watchdog --
   ---------------------------

   function sd_event_get_watchdog (e : access sd_event) return int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_get_watchdog unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_get_watchdog";
   end sd_event_get_watchdog;

   ----------------------------
   -- sd_event_get_iteration --
   ----------------------------

   function sd_event_get_iteration
     (e : access sd_event; ret : access unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_get_iteration unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_get_iteration";
   end sd_event_get_iteration;

   -------------------------
   -- sd_event_source_ref --
   -------------------------

   function sd_event_source_ref
     (s : access sd_event_source) return access sd_event_source
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_ref unimplemented");
      return
        raise Program_Error with "Unimplemented function sd_event_source_ref";
   end sd_event_source_ref;

   ---------------------------
   -- sd_event_source_unref --
   ---------------------------

   function sd_event_source_unref
     (s : access sd_event_source) return access sd_event_source
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_unref unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_unref";
   end sd_event_source_unref;

   -------------------------------
   -- sd_event_source_get_event --
   -------------------------------

   function sd_event_source_get_event
     (s : access sd_event_source) return access sd_event
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_event unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_event";
   end sd_event_source_get_event;

   ----------------------------------
   -- sd_event_source_get_userdata --
   ----------------------------------

   function sd_event_source_get_userdata
     (s : access sd_event_source) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_userdata unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_userdata";
   end sd_event_source_get_userdata;

   ----------------------------------
   -- sd_event_source_set_userdata --
   ----------------------------------

   function sd_event_source_set_userdata
     (s : access sd_event_source; userdata : System.Address)
      return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_userdata unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_userdata";
   end sd_event_source_set_userdata;

   -------------------------------------
   -- sd_event_source_set_description --
   -------------------------------------

   function sd_event_source_set_description
     (s : access sd_event_source; description : Interfaces.C.Strings.chars_ptr)
      return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_description";
   end sd_event_source_set_description;

   -------------------------------------
   -- sd_event_source_get_description --
   -------------------------------------

   function sd_event_source_get_description
     (s : access sd_event_source; description : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_description";
   end sd_event_source_get_description;

   ---------------------------------
   -- sd_event_source_set_prepare --
   ---------------------------------

   function sd_event_source_set_prepare
     (s : access sd_event_source; callback : sd_event_handler_t) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_prepare unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_prepare";
   end sd_event_source_set_prepare;

   ---------------------------------
   -- sd_event_source_get_pending --
   ---------------------------------

   function sd_event_source_get_pending (s : access sd_event_source) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_pending unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_pending";
   end sd_event_source_get_pending;

   ----------------------------------
   -- sd_event_source_get_priority --
   ----------------------------------

   function sd_event_source_get_priority
     (s : access sd_event_source; priority : access long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_priority unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_priority";
   end sd_event_source_get_priority;

   ----------------------------------
   -- sd_event_source_set_priority --
   ----------------------------------

   function sd_event_source_set_priority
     (s : access sd_event_source; priority : long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_priority unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_priority";
   end sd_event_source_set_priority;

   ---------------------------------
   -- sd_event_source_get_enabled --
   ---------------------------------

   function sd_event_source_get_enabled
     (s : access sd_event_source; enabled : access int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_enabled unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_enabled";
   end sd_event_source_get_enabled;

   ---------------------------------
   -- sd_event_source_set_enabled --
   ---------------------------------

   function sd_event_source_set_enabled
     (s : access sd_event_source; enabled : int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_enabled unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_enabled";
   end sd_event_source_set_enabled;

   -------------------------------
   -- sd_event_source_get_io_fd --
   -------------------------------

   function sd_event_source_get_io_fd (s : access sd_event_source) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_io_fd unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_io_fd";
   end sd_event_source_get_io_fd;

   -------------------------------
   -- sd_event_source_set_io_fd --
   -------------------------------

   function sd_event_source_set_io_fd
     (s : access sd_event_source; fd : int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_io_fd unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_io_fd";
   end sd_event_source_set_io_fd;

   -----------------------------------
   -- sd_event_source_get_io_fd_own --
   -----------------------------------

   function sd_event_source_get_io_fd_own
     (s : access sd_event_source) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_io_fd_own unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_io_fd_own";
   end sd_event_source_get_io_fd_own;

   -----------------------------------
   -- sd_event_source_set_io_fd_own --
   -----------------------------------

   function sd_event_source_set_io_fd_own
     (s : access sd_event_source; own : int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_io_fd_own unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_io_fd_own";
   end sd_event_source_set_io_fd_own;

   -----------------------------------
   -- sd_event_source_get_io_events --
   -----------------------------------

   function sd_event_source_get_io_events
     (s : access sd_event_source; events : access unsigned) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_io_events unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_io_events";
   end sd_event_source_get_io_events;

   -----------------------------------
   -- sd_event_source_set_io_events --
   -----------------------------------

   function sd_event_source_set_io_events
     (s : access sd_event_source; events : unsigned) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_io_events unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_io_events";
   end sd_event_source_set_io_events;

   ------------------------------------
   -- sd_event_source_get_io_revents --
   ------------------------------------

   function sd_event_source_get_io_revents
     (s : access sd_event_source; revents : access unsigned) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_io_revents unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_io_revents";
   end sd_event_source_get_io_revents;

   ------------------------------
   -- sd_event_source_get_time --
   ------------------------------

   function sd_event_source_get_time
     (s : access sd_event_source; usec : access unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_time unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_time";
   end sd_event_source_get_time;

   ------------------------------
   -- sd_event_source_set_time --
   ------------------------------

   function sd_event_source_set_time
     (s : access sd_event_source; usec : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_time unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_time";
   end sd_event_source_set_time;

   ---------------------------------------
   -- sd_event_source_get_time_accuracy --
   ---------------------------------------

   function sd_event_source_get_time_accuracy
     (s : access sd_event_source; usec : access unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_time_accuracy unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_time_accuracy";
   end sd_event_source_get_time_accuracy;

   ---------------------------------------
   -- sd_event_source_set_time_accuracy --
   ---------------------------------------

   function sd_event_source_set_time_accuracy
     (s : access sd_event_source; usec : unsigned_long) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_time_accuracy unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_time_accuracy";
   end sd_event_source_set_time_accuracy;

   ------------------------------------
   -- sd_event_source_get_time_clock --
   ------------------------------------

   function sd_event_source_get_time_clock
     (s : access sd_event_source; clock : access clockid_t) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_time_clock unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_time_clock";
   end sd_event_source_get_time_clock;

   --------------------------------
   -- sd_event_source_get_signal --
   --------------------------------

   function sd_event_source_get_signal (s : access sd_event_source) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_signal unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_signal";
   end sd_event_source_get_signal;

   -----------------------------------
   -- sd_event_source_get_child_pid --
   -----------------------------------

   function sd_event_source_get_child_pid
     (s : access sd_event_source; pid : access int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_child_pid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_child_pid";
   end sd_event_source_get_child_pid;

   --------------------------------------
   -- sd_event_source_get_inotify_mask --
   --------------------------------------

   function sd_event_source_get_inotify_mask
     (s : access sd_event_source; ret : access unsigned) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_inotify_mask unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_inotify_mask";
   end sd_event_source_get_inotify_mask;

   ------------------------------------------
   -- sd_event_source_set_destroy_callback --
   ------------------------------------------

   function sd_event_source_set_destroy_callback
     (s : access sd_event_source; callback : sd_event_destroy_t) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_destroy_callback unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_destroy_callback";
   end sd_event_source_set_destroy_callback;

   ------------------------------------------
   -- sd_event_source_get_destroy_callback --
   ------------------------------------------

   function sd_event_source_get_destroy_callback
     (s : access sd_event_source; ret : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_destroy_callback unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_destroy_callback";
   end sd_event_source_get_destroy_callback;

   ----------------------------------
   -- sd_event_source_get_floating --
   ----------------------------------

   function sd_event_source_get_floating
     (s : access sd_event_source) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_get_floating unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_get_floating";
   end sd_event_source_get_floating;

   ----------------------------------
   -- sd_event_source_set_floating --
   ----------------------------------

   function sd_event_source_set_floating
     (s : access sd_event_source; b : int) return int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_set_floating unimplemented");
      return
        raise Program_Error
          with "Unimplemented function sd_event_source_set_floating";
   end sd_event_source_set_floating;

   ---------------------
   -- sd_event_unrefp --
   ---------------------

   procedure sd_event_unrefp (p : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure sd_event_unrefp";
   end sd_event_unrefp;

   ----------------------------
   -- sd_event_source_unrefp --
   ----------------------------

   procedure sd_event_source_unrefp (p : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "sd_event_source_unrefp unimplemented");
      raise Program_Error
        with "Unimplemented procedure sd_event_source_unrefp";
   end sd_event_source_unrefp;

end Systemd.event;
