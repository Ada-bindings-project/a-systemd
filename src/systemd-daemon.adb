pragma Ada_2012;
with Systemd.Low_Level.Systemd_Sd_Daemon_H;
with Interfaces.C.Strings;
package body Systemd.daemon is
   use Systemd.Low_Level.Systemd_Sd_Daemon_H;
   ----------------
   -- listen_fds --
   ----------------

   function listen_fds (unset_environment : Boolean := False) return int is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "listen_fds unimplemented");
      return raise Program_Error with "Unimplemented function listen_fds";
   end listen_fds;

   ---------------------------
   -- listen_fds_with_names --
   ---------------------------

   function listen_fds_with_names
     (unset_environment : Boolean := False; names : System.Address) return int
   is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "listen_fds_with_names unimplemented");
      return
        raise Program_Error
          with "Unimplemented function listen_fds_with_names";
   end listen_fds_with_names;

   -------------
   -- is_fifo --
   -------------

   function is_fifo (fd : int; path : String) return Boolean is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "is_fifo unimplemented");
      return raise Program_Error with "Unimplemented function is_fifo";
   end is_fifo;

   ----------------
   -- is_special --
   ----------------

   function is_special (fd : int; path : String) return Boolean is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "is_special unimplemented");
      return raise Program_Error with "Unimplemented function is_special";
   end is_special;

   ---------------
   -- is_socket --
   ---------------

   function is_socket
     (fd : int; family : int; c_type : int; listening : int) return int
   is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "is_socket unimplemented");
      return raise Program_Error with "Unimplemented function is_socket";
   end is_socket;

   --------------------
   -- is_socket_inet --
   --------------------

   function is_socket_inet
     (fd   : int; family : int; c_type : int; listening : int;
      port : unsigned_short) return int
   is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "is_socket_inet unimplemented");
      return raise Program_Error with "Unimplemented function is_socket_inet";
   end is_socket_inet;

   ------------------------
   -- is_socket_sockaddr --
   ------------------------

   function is_socket_sockaddr
     (fd : int; c_type : int; addr : access constant int; addr_len : unsigned;
      listening : int) return int
   is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "is_socket_sockaddr unimplemented");
      return
        raise Program_Error with "Unimplemented function is_socket_sockaddr";
   end is_socket_sockaddr;

   --------------------
   -- is_socket_unix --
   --------------------

   function is_socket_unix
     (fd     : int; c_type : int; listening : int; path : String;
      length : unsigned_long) return Boolean
   is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "is_socket_unix unimplemented");
      return raise Program_Error with "Unimplemented function is_socket_unix";
   end is_socket_unix;

   -----------
   -- Is_Mq --
   -----------

   function Is_Mq (Fd : Int; Path : String) return Boolean is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "Is_Mq unimplemented");
      return raise Program_Error with "Unimplemented function Is_Mq";
   end Is_Mq;

   ------------
   -- notify --
   ------------

   function notify
     (unset_environment : Boolean := False; state : String) return int
   is
      Ret : Int;
      S   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (State);
   begin
      Ret := Sd_Notify (Int'Val (Boolean'Pos (Unset_Environment)), S);
      Interfaces.C.Strings.Free (S);
      return ret;
   end notify;

   ----------------
   -- pid_notify --
   ----------------

   function pid_notify
     (pid : int; unset_environment : Boolean := False; state : String)
      return int
   is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "pid_notify unimplemented");
      return raise Program_Error with "Unimplemented function pid_notify";
   end pid_notify;

   -------------------------
   -- pid_notify_with_fds --
   -------------------------

   function pid_notify_with_fds
     (pid : int; unset_environment : Boolean := False; state : String;
      fds : access int; n_fds : unsigned) return int
   is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "pid_notify_with_fds unimplemented");
      return
        raise Program_Error with "Unimplemented function pid_notify_with_fds";
   end pid_notify_with_fds;

   ------------
   -- booted --
   ------------

   function booted return Boolean is
   begin
      return sd_booted /= 0;
   end booted;

   ----------------------
   -- watchdog_enabled --
   ----------------------

   function watchdog_enabled
     (unset_environment : Boolean := False; usec : access unsigned_long)
      return Boolean
   is
   begin
      --  pragma Compile_Time_Warning (Standard.True, "watchdog_enabled unimplemented");
      return
        raise Program_Error with "Unimplemented function watchdog_enabled";
   end watchdog_enabled;

end Systemd.daemon;
