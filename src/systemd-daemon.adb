pragma Ada_2012;
with Interfaces.C.Strings;
with Systemd.Low_Level.Systemd_Sd_Daemon_H;
package body Systemd.Daemon is
   pragma Warnings (Off);
   use Systemd.Low_Level.Systemd_Sd_Daemon_H;

   ----------------
   -- Listen_Fds --
   ----------------

   function Listen_Fds (Unset_Environment : Boolean := False) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Listen_Fds unimplemented");
      return raise Program_Error with "Unimplemented function Listen_Fds";
   end Listen_Fds;

   ---------------------------
   -- Listen_Fds_With_Names --
   ---------------------------

   function Listen_Fds_With_Names
     (Unset_Environment : Boolean := False; Names : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Listen_Fds_With_Names unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Listen_Fds_With_Names";
   end Listen_Fds_With_Names;

   -------------
   -- Is_Fifo --
   -------------

   function Is_Fifo
     (Fd : GNAT.OS_Lib.File_Descriptor; Path : String) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Fifo unimplemented");
      return raise Program_Error with "Unimplemented function Is_Fifo";
   end Is_Fifo;

   ----------------
   -- Is_Special --
   ----------------

   function Is_Special
     (Fd : GNAT.OS_Lib.File_Descriptor; Path : String) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Special unimplemented");
      return raise Program_Error with "Unimplemented function Is_Special";
   end Is_Special;

   ---------------
   -- Is_Socket --
   ---------------

   function Is_Socket
     (Fd        : GNAT.OS_Lib.File_Descriptor; Family : Int; C_Type : Int;
      Listening : Int) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Socket unimplemented");
      return raise Program_Error with "Unimplemented function Is_Socket";
   end Is_Socket;

   --------------------
   -- Is_Socket_Inet --
   --------------------

   function Is_Socket_Inet
     (Fd        : GNAT.OS_Lib.File_Descriptor; Family : Int; C_Type : Int;
      Listening : Int; Port : Unsigned_Short) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Is_Socket_Inet unimplemented");
      return raise Program_Error with "Unimplemented function Is_Socket_Inet";
   end Is_Socket_Inet;

   ------------------------
   -- Is_Socket_Sockaddr --
   ------------------------

   function Is_Socket_Sockaddr
     (Fd   : GNAT.OS_Lib.File_Descriptor; C_Type : Int;
      Addr : access constant Int; Addr_Len : Unsigned; Listening : Int)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Is_Socket_Sockaddr unimplemented");
      return
        raise Program_Error with "Unimplemented function Is_Socket_Sockaddr";
   end Is_Socket_Sockaddr;

   --------------------
   -- Is_Socket_Unix --
   --------------------

   function Is_Socket_Unix
     (Fd   : GNAT.OS_Lib.File_Descriptor; C_Type : Int; Listening : Int;
      Path : String; Length : Unsigned_Long) return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Is_Socket_Unix unimplemented");
      return raise Program_Error with "Unimplemented function Is_Socket_Unix";
   end Is_Socket_Unix;

   -----------
   -- Is_Mq --
   -----------

   function Is_Mq
     (Fd : GNAT.OS_Lib.File_Descriptor; Path : String) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Mq unimplemented");
      return raise Program_Error with "Unimplemented function Is_Mq";
   end Is_Mq;

   ------------
   -- Notify --
   ------------

   function Notify
     (State             : String;
      Unset_Environment : Boolean := False) return Int
   is
      Ret : Int;
      S   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (State);
   begin
      Ret := Sd_Notify (Int'Val (Boolean'Pos (Unset_Environment)), S);
      Interfaces.C.Strings.Free (S);
      return ret;
   end notify;
   procedure Notify (State             : String;
                     Unset_Environment : Boolean := False) is
   begin
      Retcode_2_Exception (Notify (State, Unset_Environment));
   end;

   ----------------
   -- Pid_Notify --
   ----------------

   function Pid_Notify
     (Pid   : GNAT.OS_Lib.Process_Id; Unset_Environment : Boolean := False;
      State : String) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Pid_Notify unimplemented");
      return raise Program_Error with "Unimplemented function Pid_Notify";
   end Pid_Notify;

   -------------------------
   -- Pid_Notify_With_Fds --
   -------------------------

   function Pid_Notify_With_Fds
     (Pid   : GNAT.OS_Lib.Process_Id; Unset_Environment : Boolean := False;
      State : String; Fds : access Int; N_Fds : Unsigned) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Pid_Notify_With_Fds unimplemented");
      return
        raise Program_Error with "Unimplemented function Pid_Notify_With_Fds";
   end Pid_Notify_With_Fds;

   ------------
   -- Booted --
   ------------

   function Booted return Boolean is
   begin
      return Systemd.Low_Level.systemd_sd_daemon_h.sd_booted  /= 0;
   end booted;

   ----------------------
   -- Watchdog_Enabled --
   ----------------------

   function Watchdog_Enabled
     (Unset_Environment : Boolean := False; Watch_Time : out Duration)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Watchdog_Enabled unimplemented");
      return
        raise Program_Error with "Unimplemented function Watchdog_Enabled";
   end Watchdog_Enabled;

end Systemd.Daemon;
