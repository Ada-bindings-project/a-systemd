pragma Ada_2012;
with Interfaces.C.Strings;
with Systemd.Low_Level.Systemd_Sd_Daemon_H;
with Ada.Unchecked_Conversion;
package body Systemd.Daemon is
   use Systemd.Low_Level.Systemd_Sd_Daemon_H;

   ----------------
   -- Listen_Fds --
   ----------------

   function Listen_Fds (Unset_Environment : Boolean := False) return Int is
   begin
      return Sd_Listen_Fds (Boolean'Pos (Unset_Environment));
   end Listen_Fds;

   ---------------------------
   -- Listen_Fds_With_Names --
   ---------------------------

   function Listen_Fds_With_Names
     (Unset_Environment : Boolean := False;
      Names             : System.Address) return Int
   is
   begin
      return Sd_Listen_Fds_With_Names
        (Unset_Environment =>  Boolean'Pos (Unset_Environment),
         Names             => System.Null_Address);
   end Listen_Fds_With_Names;

   -------------
   -- Is_Fifo --
   -------------
   function File_Descriptor_As_Int is new Ada.Unchecked_Conversion (GNAT.OS_Lib.File_Descriptor, Int);

   function Is_Fifo
     (Fd : GNAT.OS_Lib.File_Descriptor; Path : String) return Boolean
   is
      C_Path : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Path);
   begin
      return Ret : constant Boolean := Sd_Is_Fifo (File_Descriptor_As_Int (Fd), C_Path) /= 0 do
         Interfaces.C.Strings.Free (C_Path);
      end return ;
   end Is_Fifo;

   ----------------
   -- Is_Special --
   ----------------

   function Is_Special
     (Fd : GNAT.OS_Lib.File_Descriptor; Path : String) return Boolean
   is
      Ret    : Int;
      C_Path : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Path);
   begin
      Ret := Sd_Is_Special (File_Descriptor_As_Int (Fd), C_Path);
      Interfaces.C.Strings.Free (C_Path);
      return Ret /= 0;
   end Is_Special;

   ---------------
   -- Is_Socket --
   ---------------

   function Is_Socket
     (Fd        : GNAT.OS_Lib.File_Descriptor;
      Family    : Int;
      C_Type    : Int;
      Listening : Boolean) return Boolean
   is
      Ret : Int;
   begin
      Ret := Sd_Is_Socket (Fd        => File_Descriptor_As_Int (Fd),
                           Family    => Family,
                           C_Type    => C_Type,
                           Listening => Boolean'Pos (Listening));
      return Ret > 0;
   end Is_Socket;

   --------------------
   -- Is_Socket_Inet --
   --------------------

   function Is_Socket_Inet
     (Fd        : GNAT.OS_Lib.File_Descriptor;
      Family    : Int;
      C_Type    : Int;
      Listening : Boolean;
      Port      : GNAT.Sockets.Port_Type) return Boolean
   is
      Ret : Int;
   begin
      Ret := Sd_Is_Socket_Inet (Fd        => File_Descriptor_As_Int (Fd),
                                Family    => Family,
                                C_Type    => C_Type,
                                Listening => Boolean'Pos (Listening),
                                Port      => Unsigned_Short (Port));
      return Ret > 0;
   end Is_Socket_Inet;

   ------------------------
   -- Is_Socket_Sockaddr --
   ------------------------

   function Is_Socket_Sockaddr
     (Fd        : GNAT.OS_Lib.File_Descriptor;
      C_Type    : GNAT.Sockets.Socket_Type;
      Addr      : GNAT.Sockets.Inet_Addr_Type;
      Listening : Boolean)
      return Boolean
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Is_Socket_Sockaddr unimplemented");
      return raise Program_Error with "Unimplemented function Is_Socket_Sockaddr";
   end Is_Socket_Sockaddr;

   --------------------
   -- Is_Socket_Unix --
   --------------------

   function Is_Socket_Unix
     (Fd        : GNAT.OS_Lib.File_Descriptor;
      C_Type    : Int;
      Listening : Int;
      Path      : String;
      Length    : Unsigned_Long) return Boolean
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
      Ret    : Int;
      C_Path : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Path);
   begin
      Ret := Sd_Is_Mq (File_Descriptor_As_Int (Fd), C_Path);
      Interfaces.C.Strings.Free (C_Path);
      return Ret /= 0;
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
      return Ret;
   end Notify;

   procedure Notify (State             : String;
                     Unset_Environment : Boolean := False) is
   begin
      Retcode_2_Exception (Notify (State, Unset_Environment));
   end;

   ----------------
   -- Pid_Notify --
   ----------------
   function Process_Id_As_Int is new Ada.Unchecked_Conversion (GNAT.OS_Lib.Process_Id, Int);

   function Pid_Notify
     (Pid   : GNAT.OS_Lib.Process_Id; Unset_Environment : Boolean := False;
      State : String) return Int
   is
      Ret : Int;
      S   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (State);
   begin
      Ret := Sd_Pid_Notify (Process_Id_As_Int (Pid), Int'Val (Boolean'Pos (Unset_Environment)), S);
      Interfaces.C.Strings.Free (S);
      return Ret;
   end Pid_Notify;

   -------------------------
   -- Pid_Notify_With_Fds --
   -------------------------


   function Pid_Notify_With_Fds
     (Pid               : GNAT.OS_Lib.Process_Id;
      Unset_Environment : Boolean := False;
      State             : String;
      Fds               : File_Descriptor_Array) return Int
   is
      S   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (State);
   begin
      return Ret : constant Int := Sd_Pid_Notify_With_Fds
        (Pid               => Process_Id_As_Int (Pid) ,
         Unset_Environment => Boolean'Pos (Unset_Environment),
         State             => S,
         Fds               => Address_As_Int_Access (Fds (Fds'First)'Address),
         N_Fds             => Fds'Length) do
         Interfaces.C.Strings.Free (S);
      end return;
   end Pid_Notify_With_Fds;

   procedure Pid_Notify_With_Fds
     (Pid               : GNAT.OS_Lib.Process_Id;
      Unset_Environment : Boolean := False;
      State             : String;
      Fds               : File_Descriptor_Array) is
   begin
      Retcode_2_Exception (Pid_Notify_With_Fds (Pid, Unset_Environment, State, Fds));
   end;

   ------------
   -- Booted --
   ------------

   function Booted return Boolean is
   begin
      return Systemd.Low_Level.Systemd_Sd_Daemon_H.Sd_Booted  /= 0;
   end Booted;

   ----------------------
   -- Watchdog_Enabled --
   ----------------------

   function Watchdog_Enabled
     (Unset_Environment : Boolean := False;
      Watch_Time        : out Duration)
      return Boolean
   is
      Ret_Watch_Time : aliased Unsigned_Long;
      Ret            : Int;
   begin
      Ret := Sd_Watchdog_Enabled (Unset_Environment => Boolean'Pos (Unset_Environment),
                                  Usec              => Ret_Watch_Time'Access);
      Watch_Time := Duration (Ret_Watch_Time) * 0.000_001; -- usec
      return Ret /= 0;
   end Watchdog_Enabled;

end Systemd.Daemon;
