pragma Ada_2012;
package body Systemd.Bus is
   use Systemd.Low_Level;
   -------------
   -- Default --
   -------------

   procedure Default (Bus : Sd_Bus) is
   begin
      Retcode_2_Exception (Systemd_Sd_Bus_H.Sd_Bus_Default (Bus.Impl'Address));
   end Default;

   ------------------
   -- Default_User --
   ------------------

   procedure Default_User (Bus : Sd_Bus) is
   begin
      Retcode_2_Exception (Systemd_Sd_Bus_H.Sd_Bus_Default_User (Bus.Impl'Address));
   end Default_User;

   --------------------
   -- Default_System --
   --------------------

   procedure Default_System (Bus : Sd_Bus) is
   begin
      Retcode_2_Exception (Systemd_Sd_Bus_H.Sd_Bus_Default_System (Bus.Impl'Address));
   end Default_System;

   ----------
   -- Open --
   ----------

   procedure Open (Bus : Sd_Bus) is
   begin
      Retcode_2_Exception (Systemd_Sd_Bus_H.Sd_Bus_Open (Bus.Impl'Address));
   end Open;

   ---------------------------
   -- Open_With_Description --
   ---------------------------

   procedure Open_With_Description (Bus : in out Sd_Bus; Description : String)
   is
      Ret           : Int;
      C_Description : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Description);
   begin
      Ret := Systemd_Sd_Bus_H.Sd_Bus_Open (Bus.Impl'Address);
      Interfaces.C.Strings.Free (C_Description);
      Retcode_2_Exception (Ret);
   end Open_With_Description;

   ---------------
   -- Open_User --
   ---------------

   procedure Open_User (Bus : in out Sd_Bus) is
   begin
      Retcode_2_Exception (Systemd_Sd_Bus_H.Sd_Bus_Open_User (Bus.Impl'Address));
   end Open_User;

   --------------------------------
   -- Open_User_With_Description --
   --------------------------------

   procedure Open_User_With_Description
     (Bus : in out Sd_Bus; Description : String)
   is
      Ret           : Int;
      C_Description : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Description);
   begin
      Ret := Systemd_Sd_Bus_H.Sd_Bus_Open_User_With_Description (Bus.Impl'Address, Description => C_Description);
      Interfaces.C.Strings.Free (C_Description);
      Retcode_2_Exception (Ret);
   end Open_User_With_Description;

   -----------------
   -- Open_System --
   -----------------

   procedure Open_System (Bus : in out Sd_Bus) is
   begin
      Retcode_2_Exception (Systemd_Sd_Bus_H.Sd_Bus_Open_System (Bus.Impl'Address));
   end Open_System;

   ----------------------------------
   -- Open_System_With_Description --
   ----------------------------------

   procedure Open_System_With_Description
     (Bus : in out Sd_Bus; Description : String)
   is
      Ret           : Int;
      C_Description : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Description);
   begin
      Ret := Systemd_Sd_Bus_H.Sd_Bus_Open_System_With_Description (Bus.Impl'Address, Description => C_Description);
      Interfaces.C.Strings.Free (C_Description);
      Retcode_2_Exception (Ret);
   end Open_System_With_Description;

   ------------------------
   -- Open_System_Remote --
   ------------------------

   procedure Open_System_Remote (Bus : in out Sd_Bus; Host : String) is
      Ret           : Int;
      C_Description : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Host);
   begin
      Ret := Systemd_Sd_Bus_H.Sd_Bus_Open_System_With_Description (Bus.Impl'Address, Description => C_Description);
      Interfaces.C.Strings.Free (C_Description);
      Retcode_2_Exception (Ret);
   end Open_System_Remote;

   -------------------------
   -- Open_System_Machine --
   -------------------------

   procedure Open_System_Machine (Bus : in out Sd_Bus; Machine : String) is
      Ret           : Int;
      C_Machine     : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Machine);
   begin
      Ret := Systemd_Sd_Bus_H.Sd_Bus_Open_System_Machine (Bus.Impl'Address, C_Machine);
      Interfaces.C.Strings.Free (C_Machine);
      Retcode_2_Exception (Ret);
   end Open_System_Machine;

   -------------
   -- New_Bus --
   -------------

   procedure New_Bus (Bus : in out Sd_Bus) is
      Ret           : Int;
   begin
      Ret := Systemd_Sd_Bus_H.Sd_Bus_New (Bus.Impl'Address);
      Retcode_2_Exception (Ret);
   end New_Bus;

   -----------------
   -- Set_Address --
   -----------------

   procedure Set_Address (Bus     : Sd_Bus;
                          Address : String) is
      Ret           : Int;
      C_Address     : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Address);
   begin
      Ret := Systemd_Sd_Bus_H.Sd_Bus_Set_Address (Bus.Impl, C_Address);
      Interfaces.C.Strings.Free (C_Address);
      Retcode_2_Exception (Ret);
   end Set_Address;

   ------------
   -- Set_Fd --
   ------------
   function File_Descriptor_As_Int is new Ada.Unchecked_Conversion (GNAT.OS_Lib.File_Descriptor, Int);
   procedure Set_Fd
     (Bus       : in out Sd_Bus;
      Input_Fd  : GNAT.OS_Lib.File_Descriptor;
      Output_Fd : GNAT.OS_Lib.File_Descriptor)
   is
      Ret           : Int;
   begin
      Ret := Systemd_Sd_Bus_H.Sd_Bus_Set_Fd (Bus.Impl, File_Descriptor_As_Int (Input_Fd), File_Descriptor_As_Int (Output_Fd));
      Retcode_2_Exception (Ret);
   end Set_Fd;

   --------------
   -- Set_Exec --
   --------------

   function Set_Exec
     (Bus : access Sd_Bus; Path : String; Argv : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Exec unimplemented");
      return raise Program_Error with "Unimplemented function Set_Exec";
   end Set_Exec;

   -----------------
   -- Get_Address --
   -----------------

   function Get_Address
     (Bus : access Sd_Bus; Address : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Address unimplemented");
      return raise Program_Error with "Unimplemented function Get_Address";
   end Get_Address;

   --------------------
   -- Set_Bus_Client --
   --------------------

   function Set_Bus_Client (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Bus_Client unimplemented");
      return raise Program_Error with "Unimplemented function Set_Bus_Client";
   end Set_Bus_Client;

   -------------------
   -- Is_Bus_Client --
   -------------------

   function Is_Bus_Client (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Is_Bus_Client unimplemented");
      return raise Program_Error with "Unimplemented function Is_Bus_Client";
   end Is_Bus_Client;

   ----------------
   -- Set_Server --
   ----------------

   function Set_Server
     (Bus : access Sd_Bus; B : Int; Bus_Id : Systemd.Id128.Id128_T) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Server unimplemented");
      return raise Program_Error with "Unimplemented function Set_Server";
   end Set_Server;

   ---------------
   -- Is_Server --
   ---------------

   function Is_Server (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Server unimplemented");
      return raise Program_Error with "Unimplemented function Is_Server";
   end Is_Server;

   -------------------
   -- Set_Anonymous --
   -------------------

   function Set_Anonymous (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Anonymous unimplemented");
      return raise Program_Error with "Unimplemented function Set_Anonymous";
   end Set_Anonymous;

   ------------------
   -- Is_Anonymous --
   ------------------

   function Is_Anonymous (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Is_Anonymous unimplemented");
      return raise Program_Error with "Unimplemented function Is_Anonymous";
   end Is_Anonymous;

   -----------------
   -- Set_Trusted --
   -----------------

   function Set_Trusted (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Trusted unimplemented");
      return raise Program_Error with "Unimplemented function Set_Trusted";
   end Set_Trusted;

   ----------------
   -- Is_Trusted --
   ----------------

   function Is_Trusted (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Trusted unimplemented");
      return raise Program_Error with "Unimplemented function Is_Trusted";
   end Is_Trusted;

   -----------------
   -- Set_Monitor --
   -----------------

   function Set_Monitor (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Monitor unimplemented");
      return raise Program_Error with "Unimplemented function Set_Monitor";
   end Set_Monitor;

   ----------------
   -- Is_Monitor --
   ----------------

   function Is_Monitor (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Monitor unimplemented");
      return raise Program_Error with "Unimplemented function Is_Monitor";
   end Is_Monitor;

   ---------------------
   -- Set_Description --
   ---------------------

   function Set_Description
     (Bus : access Sd_Bus; Description : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Description unimplemented");
      return raise Program_Error with "Unimplemented function Set_Description";
   end Set_Description;

   ---------------------
   -- Get_Description --
   ---------------------

   function Get_Description
     (Bus : access Sd_Bus; Description : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Description unimplemented");
      return raise Program_Error with "Unimplemented function Get_Description";
   end Get_Description;

   ---------------------
   -- Negotiate_Creds --
   ---------------------

   function Negotiate_Creds
     (Bus : access Sd_Bus; B : Int; Creds_Mask : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Negotiate_Creds unimplemented");
      return raise Program_Error with "Unimplemented function Negotiate_Creds";
   end Negotiate_Creds;

   -------------------------
   -- Negotiate_Timestamp --
   -------------------------

   function Negotiate_Timestamp (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Negotiate_Timestamp unimplemented");
      return
      raise Program_Error with "Unimplemented function Negotiate_Timestamp";
   end Negotiate_Timestamp;

   -------------------
   -- Negotiate_Fds --
   -------------------

   function Negotiate_Fds (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Negotiate_Fds unimplemented");
      return raise Program_Error with "Unimplemented function Negotiate_Fds";
   end Negotiate_Fds;

   --------------
   -- Can_Send --
   --------------

   function Can_Send (Bus : access Sd_Bus; C_Type : Char) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Can_Send unimplemented");
      return raise Program_Error with "Unimplemented function Can_Send";
   end Can_Send;

   --------------------
   -- Get_Creds_Mask --
   --------------------

   function Get_Creds_Mask
     (Bus : access Sd_Bus; Creds_Mask : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Creds_Mask unimplemented");
      return raise Program_Error with "Unimplemented function Get_Creds_Mask";
   end Get_Creds_Mask;

   -----------------------------------------
   -- Set_Allow_Interactive_Authorization --
   -----------------------------------------

   function Set_Allow_Interactive_Authorization
     (Bus : access Sd_Bus; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Allow_Interactive_Authorization unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Set_Allow_Interactive_Authorization";
   end Set_Allow_Interactive_Authorization;

   -----------------------------------------
   -- Get_Allow_Interactive_Authorization --
   -----------------------------------------

   function Get_Allow_Interactive_Authorization
     (Bus : access Sd_Bus) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Allow_Interactive_Authorization unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Get_Allow_Interactive_Authorization";
   end Get_Allow_Interactive_Authorization;

   ----------------------------
   -- Set_Exit_On_Disconnect --
   ----------------------------

   function Set_Exit_On_Disconnect (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Exit_On_Disconnect unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Set_Exit_On_Disconnect";
   end Set_Exit_On_Disconnect;

   ----------------------------
   -- Get_Exit_On_Disconnect --
   ----------------------------

   function Get_Exit_On_Disconnect (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Exit_On_Disconnect unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Get_Exit_On_Disconnect";
   end Get_Exit_On_Disconnect;

   -----------------------
   -- Set_Close_On_Exit --
   -----------------------

   function Set_Close_On_Exit (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Close_On_Exit unimplemented");
      return
      raise Program_Error with "Unimplemented function Set_Close_On_Exit";
   end Set_Close_On_Exit;

   -----------------------
   -- Get_Close_On_Exit --
   -----------------------

   function Get_Close_On_Exit (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Close_On_Exit unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Close_On_Exit";
   end Get_Close_On_Exit;

   --------------------
   -- Set_Watch_Bind --
   --------------------

   function Set_Watch_Bind (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Watch_Bind unimplemented");
      return raise Program_Error with "Unimplemented function Set_Watch_Bind";
   end Set_Watch_Bind;

   --------------------
   -- Get_Watch_Bind --
   --------------------

   function Get_Watch_Bind (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Watch_Bind unimplemented");
      return raise Program_Error with "Unimplemented function Get_Watch_Bind";
   end Get_Watch_Bind;

   --------------------------
   -- Set_Connected_Signal --
   --------------------------

   function Set_Connected_Signal (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Connected_Signal unimplemented");
      return
      raise Program_Error with "Unimplemented function Set_Connected_Signal";
   end Set_Connected_Signal;

   --------------------------
   -- Get_Connected_Signal --
   --------------------------

   function Get_Connected_Signal (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Connected_Signal unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Connected_Signal";
   end Get_Connected_Signal;

   ----------------
   -- Set_Sender --
   ----------------

   function Set_Sender (Bus : access Sd_Bus; Sender : String) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Set_Sender unimplemented");
      return raise Program_Error with "Unimplemented function Set_Sender";
   end Set_Sender;

   ----------------
   -- Get_Sender --
   ----------------

   function Get_Sender (Bus : access Sd_Bus; Ret : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Sender unimplemented");
      return raise Program_Error with "Unimplemented function Get_Sender";
   end Get_Sender;

   -----------
   -- Start --
   -----------

   function Start (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Start unimplemented");
      return raise Program_Error with "Unimplemented function Start";
   end Start;

   ---------------
   -- Try_Close --
   ---------------

   function Try_Close (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Try_Close unimplemented");
      return raise Program_Error with "Unimplemented function Try_Close";
   end Try_Close;

   -----------
   -- Close --
   -----------

   procedure Close (Bus : access Sd_Bus) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Close unimplemented");
      raise Program_Error with "Unimplemented procedure Close";
   end Close;

   ---------
   -- Ref --
   ---------

   function Ref (Bus : access Sd_Bus) return access Sd_Bus is
   begin
      pragma Compile_Time_Warning (Standard.True, "Ref unimplemented");
      return raise Program_Error with "Unimplemented function Ref";
   end Ref;

   -----------
   -- Unref --
   -----------

   function Unref (Bus : access Sd_Bus) return access Sd_Bus is
   begin
      pragma Compile_Time_Warning (Standard.True, "Unref unimplemented");
      return raise Program_Error with "Unimplemented function Unref";
   end Unref;

   -----------------
   -- Close_Unref --
   -----------------

   function Close_Unref (Bus : access Sd_Bus) return access Sd_Bus is
   begin
      pragma Compile_Time_Warning (Standard.True, "Close_Unref unimplemented");
      return raise Program_Error with "Unimplemented function Close_Unref";
   end Close_Unref;

   -----------------------
   -- Flush_Close_Unref --
   -----------------------

   function Flush_Close_Unref (Bus : access Sd_Bus) return access Sd_Bus is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Flush_Close_Unref unimplemented");
      return
      raise Program_Error with "Unimplemented function Flush_Close_Unref";
   end Flush_Close_Unref;

   -------------------------
   -- Default_Flush_Close --
   -------------------------

   procedure Default_Flush_Close is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Default_Flush_Close unimplemented");
      raise Program_Error with "Unimplemented procedure Default_Flush_Close";
   end Default_Flush_Close;

   -------------
   -- Is_Open --
   -------------

   function Is_Open (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Open unimplemented");
      return raise Program_Error with "Unimplemented function Is_Open";
   end Is_Open;

   --------------
   -- Is_Ready --
   --------------

   function Is_Ready (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Is_Ready unimplemented");
      return raise Program_Error with "Unimplemented function Is_Ready";
   end Is_Ready;

   ----------------
   -- Get_Bus_Id --
   ----------------

   function Get_Bus_Id
     (Bus : access Sd_Bus; Id : Systemd.Id128.Id128_T) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Bus_Id unimplemented");
      return raise Program_Error with "Unimplemented function Get_Bus_Id";
   end Get_Bus_Id;

   ---------------
   -- Get_Scope --
   ---------------

   function Get_Scope (Bus : access Sd_Bus; Scope : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Scope unimplemented");
      return raise Program_Error with "Unimplemented function Get_Scope";
   end Get_Scope;

   -------------
   -- Get_Tid --
   -------------

   function Get_Tid (Bus : access Sd_Bus; Tid : access Int) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Tid unimplemented");
      return raise Program_Error with "Unimplemented function Get_Tid";
   end Get_Tid;

   ---------------------
   -- Get_Owner_Creds --
   ---------------------

   function Get_Owner_Creds
     (Bus : access Sd_Bus; Creds_Mask : Unsigned_Long; Ret : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Owner_Creds unimplemented");
      return raise Program_Error with "Unimplemented function Get_Owner_Creds";
   end Get_Owner_Creds;

   ----------
   -- Send --
   ----------

   function Send
     (Bus    : access Sd_Bus; M : access Message'Class;
      Cookie : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Send unimplemented");
      return raise Program_Error with "Unimplemented function Send";
   end Send;

   -------------
   -- Send_To --
   -------------

   function Send_To
     (Bus    : access Sd_Bus; M : access Message'Class; Destination : String;
      Cookie : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Send_To unimplemented");
      return raise Program_Error with "Unimplemented function Send_To";
   end Send_To;

   ----------
   -- Call --
   ----------

   function Call
     (Bus       : access Sd_Bus; M : access Message'Class; Usec : Unsigned_Long;
      Ret_Error : access Error; Reply : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Call unimplemented");
      return raise Program_Error with "Unimplemented function Call";
   end Call;

   ----------------
   -- Call_Async --
   ----------------

   function Call_Async
     (Bus      : access Sd_Bus; Slot : System.Address; M : access Message'Class;
      Callback : Message_Handler_T; Userdata : System.Address;
      Usec     : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Call_Async unimplemented");
      return raise Program_Error with "Unimplemented function Call_Async";
   end Call_Async;

   ------------
   -- Get_Fd --
   ------------

   function Get_Fd (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Fd unimplemented");
      return raise Program_Error with "Unimplemented function Get_Fd";
   end Get_Fd;

   ----------------
   -- Get_Events --
   ----------------

   function Get_Events (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Events unimplemented");
      return raise Program_Error with "Unimplemented function Get_Events";
   end Get_Events;

   -----------------
   -- Get_Timeout --
   -----------------

   function Get_Timeout
     (Bus : access Sd_Bus; Timeout_Usec : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Timeout unimplemented");
      return raise Program_Error with "Unimplemented function Get_Timeout";
   end Get_Timeout;

   -------------
   -- Process --
   -------------

   function Process (Bus : access Sd_Bus; R : System.Address) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Process unimplemented");
      return raise Program_Error with "Unimplemented function Process";
   end Process;

   ----------------------
   -- Process_Priority --
   ----------------------

   function Process_Priority
     (Bus : access Sd_Bus; Max_Priority : Long; R : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Process_Priority unimplemented");
      return
      raise Program_Error with "Unimplemented function Process_Priority";
   end Process_Priority;

   ----------
   -- Wait --
   ----------

   function Wait (Bus : access Sd_Bus; Timeout_Usec : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Wait unimplemented");
      return raise Program_Error with "Unimplemented function Wait";
   end Wait;

   -----------
   -- Flush --
   -----------

   function Flush (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Flush unimplemented");
      return raise Program_Error with "Unimplemented function Flush";
   end Flush;

   ----------------------
   -- Get_Current_Slot --
   ----------------------

   function Get_Current_Slot (Bus : access Sd_Bus) return access Slot'Class is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Current_Slot unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Current_Slot";
   end Get_Current_Slot;

   -------------------------
   -- Get_Current_Message --
   -------------------------

   function Get_Current_Message
     (Bus : access Sd_Bus) return access Message'Class
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Current_Message unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Current_Message";
   end Get_Current_Message;

   -------------------------
   -- Get_Current_Handler --
   -------------------------

   function Get_Current_Handler (Bus : access Sd_Bus) return Message_Handler_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Current_Handler unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Current_Handler";
   end Get_Current_Handler;

   --------------------------
   -- Get_Current_Userdata --
   --------------------------

   function Get_Current_Userdata (Bus : access Sd_Bus) return System.Address is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Current_Userdata unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Current_Userdata";
   end Get_Current_Userdata;

   ------------------
   -- Attach_Event --
   ------------------

   function Attach_Event
     (Bus : access Sd_Bus; E : access Systemd.Event.Sd_Event; Priority : Int)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Attach_Event unimplemented");
      return raise Program_Error with "Unimplemented function Attach_Event";
   end Attach_Event;

   ------------------
   -- Detach_Event --
   ------------------

   function Detach_Event (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Detach_Event unimplemented");
      return raise Program_Error with "Unimplemented function Detach_Event";
   end Detach_Event;

   ---------------
   -- Get_Event --
   ---------------

   function Get_Event
     (Bus : access Sd_Bus) return access Systemd.Event.Sd_Event
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Event unimplemented");
      return raise Program_Error with "Unimplemented function Get_Event";
   end Get_Event;

   -----------------------
   -- Get_N_Queued_Read --
   -----------------------

   function Get_N_Queued_Read
     (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_N_Queued_Read unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_N_Queued_Read";
   end Get_N_Queued_Read;

   ------------------------
   -- Get_N_Queued_Write --
   ------------------------

   function Get_N_Queued_Write
     (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_N_Queued_Write unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_N_Queued_Write";
   end Get_N_Queued_Write;

   -----------------------------
   -- Set_Method_Call_Timeout --
   -----------------------------

   function Set_Method_Call_Timeout
     (Bus : access Sd_Bus; Usec : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Method_Call_Timeout unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Set_Method_Call_Timeout";
   end Set_Method_Call_Timeout;

   -----------------------------
   -- Get_Method_Call_Timeout --
   -----------------------------

   function Get_Method_Call_Timeout
     (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Method_Call_Timeout unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Get_Method_Call_Timeout";
   end Get_Method_Call_Timeout;

   ----------------
   -- Add_Filter --
   ----------------

   function Add_Filter
     (Bus      : access Sd_Bus; Slot : System.Address; Callback : Message_Handler_T;
      Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Add_Filter unimplemented");
      return raise Program_Error with "Unimplemented function Add_Filter";
   end Add_Filter;

   ---------------
   -- Add_Match --
   ---------------

   function Add_Match
     (Bus      : access Sd_Bus; Slot : System.Address; Match : String;
      Callback : Message_Handler_T; Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Add_Match unimplemented");
      return raise Program_Error with "Unimplemented function Add_Match";
   end Add_Match;

   ---------------------
   -- Add_Match_Async --
   ---------------------

   function Add_Match_Async
     (Bus      : access Sd_Bus; Slot : System.Address; Match : String;
      Callback : Message_Handler_T; Install_Callback : Message_Handler_T;
      Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Add_Match_Async unimplemented");
      return raise Program_Error with "Unimplemented function Add_Match_Async";
   end Add_Match_Async;

   ----------------
   -- Add_Object --
   ----------------

   function Add_Object
     (Bus      : access Sd_Bus; Slot : System.Address; Path : String;
      Callback : Message_Handler_T; Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Add_Object unimplemented");
      return raise Program_Error with "Unimplemented function Add_Object";
   end Add_Object;

   ------------------
   -- Add_Fallback --
   ------------------

   function Add_Fallback
     (Bus      : access Sd_Bus; Slot : System.Address; Prefix : String;
      Callback : Message_Handler_T; Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Add_Fallback unimplemented");
      return raise Program_Error with "Unimplemented function Add_Fallback";
   end Add_Fallback;

   -----------------------
   -- Add_Object_Vtable --
   -----------------------

   function Add_Object_Vtable
     (Bus         : access Sd_Bus; Slot : System.Address; Path : String;
      C_Interface : String;
      Vtable      : access constant Systemd.Bus.Vtable.Sd_Bus_Vtable;
      Userdata    : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Add_Object_Vtable unimplemented");
      return
      raise Program_Error with "Unimplemented function Add_Object_Vtable";
   end Add_Object_Vtable;

   -------------------------
   -- Add_Fallback_Vtable --
   -------------------------

   function Add_Fallback_Vtable
     (Bus         : access Sd_Bus; Slot : System.Address; Prefix : String;
      C_Interface : String;
      Vtable      : access constant Systemd.Bus.Vtable.Sd_Bus_Vtable;
      Find        : Object_Find_T; Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Add_Fallback_Vtable unimplemented");
      return
      raise Program_Error with "Unimplemented function Add_Fallback_Vtable";
   end Add_Fallback_Vtable;

   -------------------------
   -- Add_Node_Enumerator --
   -------------------------

   function Add_Node_Enumerator
     (Bus      : access Sd_Bus; Slot : System.Address; Path : String;
      Callback : Node_Enumerator_T; Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Add_Node_Enumerator unimplemented");
      return
      raise Program_Error with "Unimplemented function Add_Node_Enumerator";
   end Add_Node_Enumerator;

   ------------------------
   -- Add_Object_Manager --
   ------------------------

   function Add_Object_Manager
     (Bus : access Sd_Bus; Slot : System.Address; Path : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Add_Object_Manager unimplemented");
      return
      raise Program_Error with "Unimplemented function Add_Object_Manager";
   end Add_Object_Manager;

   --------------
   -- Slot_Ref --
   --------------

   function Slot_Ref (S : access Slot) return access Slot'Class is
   begin
      pragma Compile_Time_Warning (Standard.True, "Slot_Ref unimplemented");
      return raise Program_Error with "Unimplemented function Slot_Ref";
   end Slot_Ref;

   ----------------
   -- Slot_Unref --
   ----------------

   function Slot_Unref (S : access Slot) return access Slot'Class is
   begin
      pragma Compile_Time_Warning (Standard.True, "Slot_Unref unimplemented");
      return raise Program_Error with "Unimplemented function Slot_Unref";
   end Slot_Unref;

   ------------------
   -- Slot_Get_Bus --
   ------------------

   function Slot_Get_Bus (S : access Slot) return access Sd_Bus'Class is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Get_Bus unimplemented");
      return raise Program_Error with "Unimplemented function Slot_Get_Bus";
   end Slot_Get_Bus;

   -----------------------
   -- Slot_Get_Userdata --
   -----------------------

   function Slot_Get_Userdata (S : access Slot) return System.Address is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Get_Userdata unimplemented");
      return
      raise Program_Error with "Unimplemented function Slot_Get_Userdata";
   end Slot_Get_Userdata;

   -----------------------
   -- Slot_Set_Userdata --
   -----------------------

   function Slot_Set_Userdata
     (S : access Slot; Userdata : System.Address) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Set_Userdata unimplemented");
      return
      raise Program_Error with "Unimplemented function Slot_Set_Userdata";
   end Slot_Set_Userdata;

   --------------------------
   -- Slot_Set_Description --
   --------------------------

   function Slot_Set_Description
     (S : access Slot; Description : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Set_Description unimplemented");
      return
      raise Program_Error with "Unimplemented function Slot_Set_Description";
   end Slot_Set_Description;

   --------------------------
   -- Slot_Get_Description --
   --------------------------

   function Slot_Get_Description
     (S : access Slot; Description : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Get_Description unimplemented");
      return
      raise Program_Error with "Unimplemented function Slot_Get_Description";
   end Slot_Get_Description;

   -----------------------
   -- Slot_Get_Floating --
   -----------------------

   function Slot_Get_Floating (S : access Slot) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Get_Floating unimplemented");
      return
      raise Program_Error with "Unimplemented function Slot_Get_Floating";
   end Slot_Get_Floating;

   -----------------------
   -- Slot_Set_Floating --
   -----------------------

   function Slot_Set_Floating (S : access Slot; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Set_Floating unimplemented");
      return
      raise Program_Error with "Unimplemented function Slot_Set_Floating";
   end Slot_Set_Floating;

   -------------------------------
   -- Slot_Set_Destroy_Callback --
   -------------------------------

   function Slot_Set_Destroy_Callback
     (S : access Slot; Callback : Destroy_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Set_Destroy_Callback unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Slot_Set_Destroy_Callback";
   end Slot_Set_Destroy_Callback;

   -------------------------------
   -- Slot_Get_Destroy_Callback --
   -------------------------------

   function Slot_Get_Destroy_Callback
     (S : access Slot; Callback : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Get_Destroy_Callback unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Slot_Get_Destroy_Callback";
   end Slot_Get_Destroy_Callback;

   ------------------------------
   -- Slot_Get_Current_Message --
   ------------------------------

   function Slot_Get_Current_Message
     (S : access Slot) return access Message'Class
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Get_Current_Message unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Slot_Get_Current_Message";
   end Slot_Get_Current_Message;

   ------------------------------
   -- Slot_Get_Current_Handler --
   ------------------------------

   function Slot_Get_Current_Handler (S : access Slot) return Message_Handler_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Get_Current_Handler unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Slot_Get_Current_Handler";
   end Slot_Get_Current_Handler;

   -------------------------------
   -- Slot_Get_Current_Userdata --
   -------------------------------

   function Slot_Get_Current_Userdata (S : access Slot) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Slot_Get_Current_Userdata unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Slot_Get_Current_Userdata";
   end Slot_Get_Current_Userdata;

   -----------------
   -- Message_New --
   -----------------

   function Message_New
     (Bus : access Sd_Bus; M : System.Address; C_Type : Unsigned_Char)
      return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Message_New unimplemented");
      return raise Program_Error with "Unimplemented function Message_New";
   end Message_New;

   ------------------------
   -- Message_New_Signal --
   ------------------------

   function Message_New_Signal
     (Bus         : access Sd_Bus; M : System.Address; Path : String;
      C_Interface : String; Member : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_New_Signal unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_New_Signal";
   end Message_New_Signal;

   -----------------------------
   -- Message_New_Method_Call --
   -----------------------------

   function Message_New_Method_Call
     (Bus  : access Sd_Bus; M : System.Address; Destination : String;
      Path : String; C_Interface : String; Member : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_New_Method_Call unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_New_Method_Call";
   end Message_New_Method_Call;

   -------------------------------
   -- Message_New_Method_Return --
   -------------------------------

   function Message_New_Method_Return
     (Call : access Message; M : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_New_Method_Return unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_New_Method_Return";
   end Message_New_Method_Return;

   ------------------------------
   -- Message_New_Method_Error --
   ------------------------------

   function Message_New_Method_Error
     (Call : access Message; M : System.Address; E : access constant Error)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_New_Method_Error unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_New_Method_Error";
   end Message_New_Method_Error;

   -------------------------------
   -- Message_New_Method_Errorf --
   -------------------------------

   function Message_New_Method_Errorf
     (Call   : access Message; M : System.Address; Name : String;
      Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_New_Method_Errorf unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_New_Method_Errorf";
   end Message_New_Method_Errorf;

   ------------------------------
   -- Message_New_Method_Errno --
   ------------------------------

   function Message_New_Method_Errno
     (Call : access Message; M : System.Address; ErrorCode : Int;
      E    : access constant Error) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_New_Method_Errno unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_New_Method_Errno";
   end Message_New_Method_Errno;

   -------------------------------
   -- Message_New_Method_Errnof --
   -------------------------------

   function Message_New_Method_Errnof
     (Call : access Message; M : System.Address; Error : Int; Format : String)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_New_Method_Errnof unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_New_Method_Errnof";
   end Message_New_Method_Errnof;

   -----------------
   -- Message_Ref --
   -----------------

   function Message_Ref (M : access Message) return access Message is
   begin
      pragma Compile_Time_Warning (Standard.True, "Message_Ref unimplemented");
      return raise Program_Error with "Unimplemented function Message_Ref";
   end Message_Ref;

   -------------------
   -- Message_Unref --
   -------------------

   function Message_Unref (M : access Message) return access Message is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Unref unimplemented");
      return raise Program_Error with "Unimplemented function Message_Unref";
   end Message_Unref;

   ------------------
   -- Message_Seal --
   ------------------

   function Message_Seal
     (M : access Message; Cookie : Unsigned_Long; Timeout_Usec : Unsigned_Long)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Seal unimplemented");
      return raise Program_Error with "Unimplemented function Message_Seal";
   end Message_Seal;

   ----------------------
   -- Message_Get_Type --
   ----------------------

   function Message_Get_Type
     (M : access Message; C_Type : access Unsigned_Char) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Type unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Type";
   end Message_Get_Type;

   ------------------------
   -- Message_Get_Cookie --
   ------------------------

   function Message_Get_Cookie
     (M : access Message; Cookie : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Cookie unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Cookie";
   end Message_Get_Cookie;

   ------------------------------
   -- Message_Get_Reply_Cookie --
   ------------------------------

   function Message_Get_Reply_Cookie
     (M : access Message; Cookie : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Reply_Cookie unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Get_Reply_Cookie";
   end Message_Get_Reply_Cookie;

   --------------------------
   -- Message_Get_Priority --
   --------------------------

   function Message_Get_Priority
     (M : access Message; Priority : access Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Priority unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Priority";
   end Message_Get_Priority;

   ------------------------------
   -- Message_Get_Expect_Reply --
   ------------------------------

   function Message_Get_Expect_Reply (M : access Message) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Expect_Reply unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Get_Expect_Reply";
   end Message_Get_Expect_Reply;

   ----------------------------
   -- Message_Get_Auto_Start --
   ----------------------------

   function Message_Get_Auto_Start (M : access Message) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Auto_Start unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Get_Auto_Start";
   end Message_Get_Auto_Start;

   -------------------------------------------------
   -- Message_Get_Allow_Interactive_Authorization --
   -------------------------------------------------

   function Message_Get_Allow_Interactive_Authorization
     (M : access Message) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True,
         "Message_Get_Allow_Interactive_Authorization unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Get_Allow_Interactive_Authorization";
   end Message_Get_Allow_Interactive_Authorization;

   ---------------------------
   -- Message_Get_Signature --
   ---------------------------

   function Message_Get_Signature
     (M : access Message; Complete : Int) return String
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Signature unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Get_Signature";
   end Message_Get_Signature;

   ----------------------
   -- Message_Get_Path --
   ----------------------

   function Message_Get_Path (M : access Message) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Path unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Path";
   end Message_Get_Path;

   ---------------------------
   -- Message_Get_Interface --
   ---------------------------

   function Message_Get_Interface (M : access Message) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Interface unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Get_Interface";
   end Message_Get_Interface;

   ------------------------
   -- Message_Get_Member --
   ------------------------

   function Message_Get_Member (M : access Message) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Member unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Member";
   end Message_Get_Member;

   -----------------------------
   -- Message_Get_Destination --
   -----------------------------

   function Message_Get_Destination (M : access Message) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Destination unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Get_Destination";
   end Message_Get_Destination;

   ------------------------
   -- Message_Get_Sender --
   ------------------------

   function Message_Get_Sender (M : access Message) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Sender unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Sender";
   end Message_Get_Sender;

   -----------------------
   -- Message_Get_Error --
   -----------------------

   function Message_Get_Error (M : access Message) return access constant Error
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Error unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Error";
   end Message_Get_Error;

   -----------------------
   -- Message_Get_Errno --
   -----------------------

   function Message_Get_Errno (M : access Message) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Errno unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Errno";
   end Message_Get_Errno;

   --------------------------------
   -- Message_Get_Monotonic_Usec --
   --------------------------------

   function Message_Get_Monotonic_Usec
     (M : access Message; Usec : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Monotonic_Usec unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Get_Monotonic_Usec";
   end Message_Get_Monotonic_Usec;

   -------------------------------
   -- Message_Get_Realtime_Usec --
   -------------------------------

   function Message_Get_Realtime_Usec
     (M : access Message; Usec : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Realtime_Usec unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Get_Realtime_Usec";
   end Message_Get_Realtime_Usec;

   ------------------------
   -- Message_Get_Seqnum --
   ------------------------

   function Message_Get_Seqnum
     (M : access Message; Seqnum : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Seqnum unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Seqnum";
   end Message_Get_Seqnum;

   ---------------------
   -- Message_Get_Bus --
   ---------------------

   function Message_Get_Bus (M : access Message) return access Sd_Bus'Class is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Bus unimplemented");
      return raise Program_Error with "Unimplemented function Message_Get_Bus";
   end Message_Get_Bus;

   -----------------------
   -- Message_Get_Creds --
   -----------------------

   function Message_Get_Creds (M : access Message) return access Creds'Class is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Get_Creds unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Get_Creds";
   end Message_Get_Creds;

   -----------------------
   -- Message_Is_Signal --
   -----------------------

   function Message_Is_Signal
     (M : access Message; C_Interface : String; Member : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Is_Signal unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Is_Signal";
   end Message_Is_Signal;

   ----------------------------
   -- Message_Is_Method_Call --
   ----------------------------

   function Message_Is_Method_Call
     (M : access Message; C_Interface : String; Member : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Is_Method_Call unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Is_Method_Call";
   end Message_Is_Method_Call;

   -----------------------------
   -- Message_Is_Method_Error --
   -----------------------------

   function Message_Is_Method_Error
     (M : access Message; Name : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Is_Method_Error unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Is_Method_Error";
   end Message_Is_Method_Error;

   ----------------------
   -- Message_Is_Empty --
   ----------------------

   function Message_Is_Empty (M : access Message) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Is_Empty unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Is_Empty";
   end Message_Is_Empty;

   ---------------------------
   -- Message_Has_Signature --
   ---------------------------

   function Message_Has_Signature
     (M : access Message; Signature : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Has_Signature unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Has_Signature";
   end Message_Has_Signature;

   ------------------------------
   -- Message_Set_Expect_Reply --
   ------------------------------

   function Message_Set_Expect_Reply (M : access Message; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Set_Expect_Reply unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Set_Expect_Reply";
   end Message_Set_Expect_Reply;

   ----------------------------
   -- Message_Set_Auto_Start --
   ----------------------------

   function Message_Set_Auto_Start (M : access Message; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Set_Auto_Start unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Set_Auto_Start";
   end Message_Set_Auto_Start;

   -------------------------------------------------
   -- Message_Set_Allow_Interactive_Authorization --
   -------------------------------------------------

   function Message_Set_Allow_Interactive_Authorization
     (M : access Message; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True,
         "Message_Set_Allow_Interactive_Authorization unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Set_Allow_Interactive_Authorization";
   end Message_Set_Allow_Interactive_Authorization;

   -----------------------------
   -- Message_Set_Destination --
   -----------------------------

   function Message_Set_Destination
     (M : access Message; Destination : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Set_Destination unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Set_Destination";
   end Message_Set_Destination;

   ------------------------
   -- Message_Set_Sender --
   ------------------------

   function Message_Set_Sender (M : access Message; Sender : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Set_Sender unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Set_Sender";
   end Message_Set_Sender;

   --------------------------
   -- Message_Set_Priority --
   --------------------------

   function Message_Set_Priority
     (M : access Message; Priority : Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Set_Priority unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Set_Priority";
   end Message_Set_Priority;

   --------------------
   -- Message_Append --
   --------------------

   function Message_Append (M : access Message; Types : String) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append unimplemented");
      return raise Program_Error with "Unimplemented function Message_Append";
   end Message_Append;

   ---------------------
   -- Message_Appendv --
   ---------------------

   function Message_Appendv
     (M : access Message; Types : String; Ap : access System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Appendv unimplemented");
      return raise Program_Error with "Unimplemented function Message_Appendv";
   end Message_Appendv;

   --------------------------
   -- Message_Append_Basic --
   --------------------------

   function Message_Append_Basic
     (M : access Message; C_Type : Char; P : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append_Basic unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Append_Basic";
   end Message_Append_Basic;

   --------------------------
   -- Message_Append_Array --
   --------------------------

   function Message_Append_Array
     (M    : access Message; C_Type : Char; Ptr : System.Address;
      Size : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append_Array unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Append_Array";
   end Message_Append_Array;

   --------------------------------
   -- Message_Append_Array_Space --
   --------------------------------

   function Message_Append_Array_Space
     (M   : access Message; C_Type : Char; Size : Unsigned_Long;
      Ptr : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append_Array_Space unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Append_Array_Space";
   end Message_Append_Array_Space;

   --------------------------------
   -- Message_Append_Array_Iovec --
   --------------------------------

   function Message_Append_Array_Iovec
     (M : access Message; C_Type : Char; Iov : access constant System.Address;
      N : Unsigned) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append_Array_Iovec unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Append_Array_Iovec";
   end Message_Append_Array_Iovec;

   --------------------------------
   -- Message_Append_Array_Memfd --
   --------------------------------

   function Message_Append_Array_Memfd
     (M    : access Message; C_Type : Char; Memfd : Int; Offset : Unsigned_Long;
      Size : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append_Array_Memfd unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Append_Array_Memfd";
   end Message_Append_Array_Memfd;

   ---------------------------------
   -- Message_Append_String_Space --
   ---------------------------------

   function Message_Append_String_Space
     (M : access Message; Size : Unsigned_Long; S : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append_String_Space unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Append_String_Space";
   end Message_Append_String_Space;

   ---------------------------------
   -- Message_Append_String_Iovec --
   ---------------------------------

   function Message_Append_String_Iovec
     (M : access Message; Iov : access constant System.Address; N : Unsigned)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append_String_Iovec unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Append_String_Iovec";
   end Message_Append_String_Iovec;

   ---------------------------------
   -- Message_Append_String_Memfd --
   ---------------------------------

   function Message_Append_String_Memfd
     (M    : access Message; Memfd : Int; Offset : Unsigned_Long;
      Size : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append_String_Memfd unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Append_String_Memfd";
   end Message_Append_String_Memfd;

   -------------------------
   -- Message_Append_Strv --
   -------------------------

   function Message_Append_Strv
     (M : access Message; L : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Append_Strv unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Append_Strv";
   end Message_Append_Strv;

   ----------------------------
   -- Message_Open_Container --
   ----------------------------

   function Message_Open_Container
     (M : access Message; C_Type : Char; Contents : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Open_Container unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Open_Container";
   end Message_Open_Container;

   -----------------------------
   -- Message_Close_Container --
   -----------------------------

   function Message_Close_Container (M : access Message) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Close_Container unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Close_Container";
   end Message_Close_Container;

   ------------------
   -- Message_Copy --
   ------------------

   function Message_Copy
     (M : access Message; Source : access Message; C_All : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Copy unimplemented");
      return raise Program_Error with "Unimplemented function Message_Copy";
   end Message_Copy;

   ------------------
   -- Message_Read --
   ------------------

   function Message_Read (M : access Message; Types : String) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Read unimplemented");
      return raise Program_Error with "Unimplemented function Message_Read";
   end Message_Read;

   -------------------
   -- Message_Readv --
   -------------------

   function Message_Readv
     (M : access Message; Types : String; Ap : access System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Readv unimplemented");
      return raise Program_Error with "Unimplemented function Message_Readv";
   end Message_Readv;

   ------------------------
   -- Message_Read_Basic --
   ------------------------

   function Message_Read_Basic
     (M : access Message; C_Type : Char; P : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Read_Basic unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Read_Basic";
   end Message_Read_Basic;

   ------------------------
   -- Message_Read_Array --
   ------------------------

   function Message_Read_Array
     (M    : access Message; C_Type : Char; Ptr : System.Address;
      Size : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Read_Array unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Read_Array";
   end Message_Read_Array;

   -----------------------
   -- Message_Read_Strv --
   -----------------------

   function Message_Read_Strv
     (M : access Message; L : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Read_Strv unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Read_Strv";
   end Message_Read_Strv;

   ------------------
   -- Message_Skip --
   ------------------

   function Message_Skip (M : access Message; Types : String) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Skip unimplemented");
      return raise Program_Error with "Unimplemented function Message_Skip";
   end Message_Skip;

   -----------------------------
   -- Message_Enter_Container --
   -----------------------------

   function Message_Enter_Container
     (M : access Message; C_Type : Char; Contents : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Enter_Container unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Enter_Container";
   end Message_Enter_Container;

   ----------------------------
   -- Message_Exit_Container --
   ----------------------------

   function Message_Exit_Container (M : access Message) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Exit_Container unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Message_Exit_Container";
   end Message_Exit_Container;

   -----------------------
   -- Message_Peek_Type --
   -----------------------

   function Message_Peek_Type
     (M : access Message; C_Type : String; Contents : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Peek_Type unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Peek_Type";
   end Message_Peek_Type;

   -------------------------
   -- Message_Verify_Type --
   -------------------------

   function Message_Verify_Type
     (M : access Message; C_Type : Char; Contents : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Verify_Type unimplemented");
      return
      raise Program_Error with "Unimplemented function Message_Verify_Type";
   end Message_Verify_Type;

   --------------------
   -- Message_At_End --
   --------------------

   function Message_At_End (M : access Message; Complete : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_At_End unimplemented");
      return raise Program_Error with "Unimplemented function Message_At_End";
   end Message_At_End;

   --------------------
   -- Message_Rewind --
   --------------------

   function Message_Rewind (M : access Message; Complete : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Rewind unimplemented");
      return raise Program_Error with "Unimplemented function Message_Rewind";
   end Message_Rewind;

   ---------------------
   -- Get_Unique_Name --
   ---------------------

   function Get_Unique_Name
     (Bus : access Sd_Bus; Unique : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Unique_Name unimplemented");
      return raise Program_Error with "Unimplemented function Get_Unique_Name";
   end Get_Unique_Name;

   ------------------
   -- Request_Name --
   ------------------

   function Request_Name
     (Bus : access Sd_Bus; Name : String; Flags : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Request_Name unimplemented");
      return raise Program_Error with "Unimplemented function Request_Name";
   end Request_Name;

   ------------------------
   -- Request_Name_Async --
   ------------------------

   function Request_Name_Async
     (Bus      : access Sd_Bus; Ret_Slot : System.Address; Name : String;
      Flags    : Unsigned_Long; Callback : Message_Handler_T;
      Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Request_Name_Async unimplemented");
      return
      raise Program_Error with "Unimplemented function Request_Name_Async";
   end Request_Name_Async;

   ------------------
   -- Release_Name --
   ------------------

   function Release_Name (Bus : access Sd_Bus; Name : String) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Release_Name unimplemented");
      return raise Program_Error with "Unimplemented function Release_Name";
   end Release_Name;

   ------------------------
   -- Release_Name_Async --
   ------------------------

   function Release_Name_Async
     (Bus      : access Sd_Bus; Ret_Slot : System.Address; Name : String;
      Callback : Message_Handler_T; Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Release_Name_Async unimplemented");
      return
      raise Program_Error with "Unimplemented function Release_Name_Async";
   end Release_Name_Async;

   ----------------
   -- List_Names --
   ----------------

   function List_Names
     (Bus         : access Sd_Bus; Acquired : System.Address;
      Activatable : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "List_Names unimplemented");
      return raise Program_Error with "Unimplemented function List_Names";
   end List_Names;

   --------------------
   -- Get_Name_Creds --
   --------------------

   function Get_Name_Creds
     (Bus   : access Sd_Bus; Name : String; Mask : Unsigned_Long;
      Creds : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Name_Creds unimplemented");
      return raise Program_Error with "Unimplemented function Get_Name_Creds";
   end Get_Name_Creds;

   -------------------------
   -- Get_Name_Machine_Id --
   -------------------------

   function Get_Name_Machine_Id
     (Bus : access Sd_Bus; Name : String; Machine : Systemd.Id128.Id128_T)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Name_Machine_Id unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Name_Machine_Id";
   end Get_Name_Machine_Id;

   -----------------
   -- Call_Method --
   -----------------

   function Call_Method
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Error;
      Reply       : System.Address; Types : String) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Call_Method unimplemented");
      return raise Program_Error with "Unimplemented function Call_Method";
   end Call_Method;

   -----------------------
   -- Call_Method_Async --
   -----------------------

   function Call_Method_Async
     (Bus      : access Sd_Bus; Slot : System.Address; Destination : String;
      Path     : String; C_Interface : String; Member : String;
      Callback : Message_Handler_T; Userdata : System.Address; Types : String)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Call_Method_Async unimplemented");
      return
      raise Program_Error with "Unimplemented function Call_Method_Async";
   end Call_Method_Async;

   ------------------
   -- Get_Property --
   ------------------

   function Get_Property
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Error;
      Reply       : System.Address; C_Type : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Property unimplemented");
      return raise Program_Error with "Unimplemented function Get_Property";
   end Get_Property;

   --------------------------
   -- Get_Property_Trivial --
   --------------------------

   function Get_Property_Trivial
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Error;
      C_Type      : Char; Ret_Ptr : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Property_Trivial unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Property_Trivial";
   end Get_Property_Trivial;

   -------------------------
   -- Get_Property_String --
   -------------------------

   function Get_Property_String
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Error;
      Ret         : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Property_String unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Property_String";
   end Get_Property_String;

   -----------------------
   -- Get_Property_Strv --
   -----------------------

   function Get_Property_Strv
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Error;
      Ret         : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Property_Strv unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Property_Strv";
   end Get_Property_Strv;

   ------------------
   -- Set_Property --
   ------------------

   function Set_Property
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Error;
      C_Type      : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Property unimplemented");
      return raise Program_Error with "Unimplemented function Set_Property";
   end Set_Property;

   -------------------------
   -- Reply_Method_Return --
   -------------------------

   function Reply_Method_Return
     (Call : access Message; Types : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Reply_Method_Return unimplemented");
      return
      raise Program_Error with "Unimplemented function Reply_Method_Return";
   end Reply_Method_Return;

   ------------------------
   -- Reply_Method_Error --
   ------------------------

   function Reply_Method_Error
     (Call : access Message; E : access constant Error) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Reply_Method_Error unimplemented");
      return
      raise Program_Error with "Unimplemented function Reply_Method_Error";
   end Reply_Method_Error;

   -------------------------
   -- Reply_Method_Errorf --
   -------------------------

   function Reply_Method_Errorf
     (Call : access Message; Name : String; Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Reply_Method_Errorf unimplemented");
      return
      raise Program_Error with "Unimplemented function Reply_Method_Errorf";
   end Reply_Method_Errorf;

   ------------------------
   -- Reply_Method_Errno --
   ------------------------

   function Reply_Method_Errno
     (Call : access Message; ErrorCode : Int; E : access constant Error)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Reply_Method_Errno unimplemented");
      return
      raise Program_Error with "Unimplemented function Reply_Method_Errno";
   end Reply_Method_Errno;

   -------------------------
   -- Reply_Method_Errnof --
   -------------------------

   function Reply_Method_Errnof
     (Call : access Message; Error : Int; Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Reply_Method_Errnof unimplemented");
      return
      raise Program_Error with "Unimplemented function Reply_Method_Errnof";
   end Reply_Method_Errnof;

   -----------------
   -- Emit_Signal --
   -----------------

   function Emit_Signal
     (Bus    : access Sd_Bus; Path : String; C_Interface : String;
      Member : String; Types : String) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Emit_Signal unimplemented");
      return raise Program_Error with "Unimplemented function Emit_Signal";
   end Emit_Signal;

   ----------------------------------
   -- Emit_Properties_Changed_Strv --
   ----------------------------------

   function Emit_Properties_Changed_Strv
     (Bus   : access Sd_Bus; Path : String; C_Interface : String;
      Names : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Emit_Properties_Changed_Strv unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Emit_Properties_Changed_Strv";
   end Emit_Properties_Changed_Strv;

   -----------------------------
   -- Emit_Properties_Changed --
   -----------------------------

   function Emit_Properties_Changed
     (Bus : access Sd_Bus; Path : String; C_Interface : String; Name : String)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Emit_Properties_Changed unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Emit_Properties_Changed";
   end Emit_Properties_Changed;

   -----------------------
   -- Emit_Object_Added --
   -----------------------

   function Emit_Object_Added (Bus : access Sd_Bus; Path : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Emit_Object_Added unimplemented");
      return
      raise Program_Error with "Unimplemented function Emit_Object_Added";
   end Emit_Object_Added;

   -------------------------
   -- Emit_Object_Removed --
   -------------------------

   function Emit_Object_Removed (Bus : access Sd_Bus; Path : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Emit_Object_Removed unimplemented");
      return
      raise Program_Error with "Unimplemented function Emit_Object_Removed";
   end Emit_Object_Removed;

   --------------------------------
   -- Emit_Interfaces_Added_Strv --
   --------------------------------

   function Emit_Interfaces_Added_Strv
     (Bus : access Sd_Bus; Path : String; Interfaces : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Emit_Interfaces_Added_Strv unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Emit_Interfaces_Added_Strv";
   end Emit_Interfaces_Added_Strv;

   ---------------------------
   -- Emit_Interfaces_Added --
   ---------------------------

   function Emit_Interfaces_Added
     (Bus : access Sd_Bus; Path : String; C_Interface : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Emit_Interfaces_Added unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Emit_Interfaces_Added";
   end Emit_Interfaces_Added;

   ----------------------------------
   -- Emit_Interfaces_Removed_Strv --
   ----------------------------------

   function Emit_Interfaces_Removed_Strv
     (Bus : access Sd_Bus; Path : String; Interfaces : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Emit_Interfaces_Removed_Strv unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Emit_Interfaces_Removed_Strv";
   end Emit_Interfaces_Removed_Strv;

   -----------------------------
   -- Emit_Interfaces_Removed --
   -----------------------------

   function Emit_Interfaces_Removed
     (Bus : access Sd_Bus; Path : String; C_Interface : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Emit_Interfaces_Removed unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Emit_Interfaces_Removed";
   end Emit_Interfaces_Removed;

   ------------------------
   -- Query_Sender_Creds --
   ------------------------

   function Query_Sender_Creds
     (Call : access Message; Mask : Unsigned_Long; Creds : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Query_Sender_Creds unimplemented");
      return
      raise Program_Error with "Unimplemented function Query_Sender_Creds";
   end Query_Sender_Creds;

   ----------------------------
   -- Query_Sender_Privilege --
   ----------------------------

   function Query_Sender_Privilege
     (Call : access Message; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Query_Sender_Privilege unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Query_Sender_Privilege";
   end Query_Sender_Privilege;

   ------------------
   -- Match_Signal --
   ------------------

   function Match_Signal
     (Bus      : access Sd_Bus; Ret : System.Address; Sender : String;
      Path     : String; C_Interface : String; Member : String;
      Callback : Message_Handler_T; Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Match_Signal unimplemented");
      return raise Program_Error with "Unimplemented function Match_Signal";
   end Match_Signal;

   ------------------------
   -- Match_Signal_Async --
   ------------------------

   function Match_Signal_Async
     (Bus            : access Sd_Bus; Ret : System.Address; Sender : String;
      Path           : String; C_Interface : String; Member : String;
      Match_Callback : Message_Handler_T; Add_Callback : Message_Handler_T;
      Userdata       : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Match_Signal_Async unimplemented");
      return
      raise Program_Error with "Unimplemented function Match_Signal_Async";
   end Match_Signal_Async;

   ------------------------
   -- Creds_New_From_Pid --
   ------------------------

   function Creds_New_From_Pid
     (Ret : System.Address; Pid : Int; Creds_Mask : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_New_From_Pid unimplemented");
      return
      raise Program_Error with "Unimplemented function Creds_New_From_Pid";
   end Creds_New_From_Pid;

   ---------------
   -- Creds_Ref --
   ---------------

   function Creds_Ref (C : access Creds) return access Creds is
   begin
      pragma Compile_Time_Warning (Standard.True, "Creds_Ref unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Ref";
   end Creds_Ref;

   -----------------
   -- Creds_Unref --
   -----------------

   function Creds_Unref (C : access Creds) return access Creds is
   begin
      pragma Compile_Time_Warning (Standard.True, "Creds_Unref unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Unref";
   end Creds_Unref;

   --------------------
   -- Creds_Get_Mask --
   --------------------

   function Creds_Get_Mask (C : access constant Creds) return Unsigned_Long is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Mask unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Mask";
   end Creds_Get_Mask;

   ------------------------------
   -- Creds_Get_Augmented_Mask --
   ------------------------------

   function Creds_Get_Augmented_Mask
     (C : access constant Creds) return Unsigned_Long
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Augmented_Mask unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Get_Augmented_Mask";
   end Creds_Get_Augmented_Mask;

   -------------------
   -- Creds_Get_Pid --
   -------------------

   function Creds_Get_Pid (C : access Creds; Pid : access Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Pid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Pid";
   end Creds_Get_Pid;

   --------------------
   -- Creds_Get_Ppid --
   --------------------

   function Creds_Get_Ppid (C : access Creds; Ppid : access Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Ppid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Ppid";
   end Creds_Get_Ppid;

   -------------------
   -- Creds_Get_Tid --
   -------------------

   function Creds_Get_Tid (C : access Creds; Tid : access Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Tid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Tid";
   end Creds_Get_Tid;

   -------------------
   -- Creds_Get_Uid --
   -------------------

   function Creds_Get_Uid (C : access Creds; Uid : access Uid_T) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Uid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Uid";
   end Creds_Get_Uid;

   --------------------
   -- Creds_Get_Euid --
   --------------------

   function Creds_Get_Euid (C : access Creds; Euid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Euid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Euid";
   end Creds_Get_Euid;

   --------------------
   -- Creds_Get_Suid --
   --------------------

   function Creds_Get_Suid (C : access Creds; Suid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Suid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Suid";
   end Creds_Get_Suid;

   ---------------------
   -- Creds_Get_Fsuid --
   ---------------------

   function Creds_Get_Fsuid (C : access Creds; Fsuid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Fsuid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Fsuid";
   end Creds_Get_Fsuid;

   -------------------
   -- Creds_Get_Gid --
   -------------------

   function Creds_Get_Gid (C : access Creds; Gid : access Gid_T) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Gid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Gid";
   end Creds_Get_Gid;

   --------------------
   -- Creds_Get_Egid --
   --------------------

   function Creds_Get_Egid (C : access Creds; Egid : access Gid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Egid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Egid";
   end Creds_Get_Egid;

   --------------------
   -- Creds_Get_Sgid --
   --------------------

   function Creds_Get_Sgid (C : access Creds; Sgid : access Gid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Sgid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Sgid";
   end Creds_Get_Sgid;

   ---------------------
   -- Creds_Get_Fsgid --
   ---------------------

   function Creds_Get_Fsgid (C : access Creds; Fsgid : access Gid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Fsgid unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Fsgid";
   end Creds_Get_Fsgid;

   ----------------------------------
   -- Creds_Get_Supplementary_Gids --
   ----------------------------------

   function Creds_Get_Supplementary_Gids
     (C : access Creds; Gids : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Supplementary_Gids unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Get_Supplementary_Gids";
   end Creds_Get_Supplementary_Gids;

   --------------------
   -- Creds_Get_Comm --
   --------------------

   function Creds_Get_Comm (C : access Creds; Comm : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Comm unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Comm";
   end Creds_Get_Comm;

   ------------------------
   -- Creds_Get_Tid_Comm --
   ------------------------

   function Creds_Get_Tid_Comm
     (C : access Creds; Comm : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Tid_Comm unimplemented");
      return
      raise Program_Error with "Unimplemented function Creds_Get_Tid_Comm";
   end Creds_Get_Tid_Comm;

   -------------------
   -- Creds_Get_Exe --
   -------------------

   function Creds_Get_Exe (C : access Creds; Exe : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Exe unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Exe";
   end Creds_Get_Exe;

   -----------------------
   -- Creds_Get_Cmdline --
   -----------------------

   function Creds_Get_Cmdline
     (C : access Creds; Cmdline : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Cmdline unimplemented");
      return
      raise Program_Error with "Unimplemented function Creds_Get_Cmdline";
   end Creds_Get_Cmdline;

   ----------------------
   -- Creds_Get_Cgroup --
   ----------------------

   function Creds_Get_Cgroup
     (C : access Creds; Cgroup : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Cgroup unimplemented");
      return
      raise Program_Error with "Unimplemented function Creds_Get_Cgroup";
   end Creds_Get_Cgroup;

   --------------------
   -- Creds_Get_Unit --
   --------------------

   function Creds_Get_Unit (C : access Creds; Unit : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Unit unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Unit";
   end Creds_Get_Unit;

   ---------------------
   -- Creds_Get_Slice --
   ---------------------

   function Creds_Get_Slice
     (C : access Creds; Slice : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Slice unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Slice";
   end Creds_Get_Slice;

   -------------------------
   -- Creds_Get_User_Unit --
   -------------------------

   function Creds_Get_User_Unit
     (C : access Creds; Unit : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_User_Unit unimplemented");
      return
      raise Program_Error with "Unimplemented function Creds_Get_User_Unit";
   end Creds_Get_User_Unit;

   --------------------------
   -- Creds_Get_User_Slice --
   --------------------------

   function Creds_Get_User_Slice
     (C : access Creds; Slice : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_User_Slice unimplemented");
      return
      raise Program_Error with "Unimplemented function Creds_Get_User_Slice";
   end Creds_Get_User_Slice;

   -----------------------
   -- Creds_Get_Session --
   -----------------------

   function Creds_Get_Session
     (C : access Creds; Session : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Session unimplemented");
      return
      raise Program_Error with "Unimplemented function Creds_Get_Session";
   end Creds_Get_Session;

   -------------------------
   -- Creds_Get_Owner_Uid --
   -------------------------

   function Creds_Get_Owner_Uid
     (C : access Creds; Uid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Owner_Uid unimplemented");
      return
      raise Program_Error with "Unimplemented function Creds_Get_Owner_Uid";
   end Creds_Get_Owner_Uid;

   -----------------------------
   -- Creds_Has_Effective_Cap --
   -----------------------------

   function Creds_Has_Effective_Cap
     (C : access Creds; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Has_Effective_Cap unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Has_Effective_Cap";
   end Creds_Has_Effective_Cap;

   -----------------------------
   -- Creds_Has_Permitted_Cap --
   -----------------------------

   function Creds_Has_Permitted_Cap
     (C : access Creds; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Has_Permitted_Cap unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Has_Permitted_Cap";
   end Creds_Has_Permitted_Cap;

   -------------------------------
   -- Creds_Has_Inheritable_Cap --
   -------------------------------

   function Creds_Has_Inheritable_Cap
     (C : access Creds; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Has_Inheritable_Cap unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Has_Inheritable_Cap";
   end Creds_Has_Inheritable_Cap;

   ----------------------------
   -- Creds_Has_Bounding_Cap --
   ----------------------------

   function Creds_Has_Bounding_Cap
     (C : access Creds; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Has_Bounding_Cap unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Has_Bounding_Cap";
   end Creds_Has_Bounding_Cap;

   -------------------------------
   -- Creds_Get_Selinux_Context --
   -------------------------------

   function Creds_Get_Selinux_Context
     (C : access Creds; Context : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Selinux_Context unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Get_Selinux_Context";
   end Creds_Get_Selinux_Context;

   --------------------------------
   -- Creds_Get_Audit_Session_Id --
   --------------------------------

   function Creds_Get_Audit_Session_Id
     (C : access Creds; Sessionid : access Unsigned) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Audit_Session_Id unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Get_Audit_Session_Id";
   end Creds_Get_Audit_Session_Id;

   -------------------------------
   -- Creds_Get_Audit_Login_Uid --
   -------------------------------

   function Creds_Get_Audit_Login_Uid
     (C : access Creds; Loginuid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Audit_Login_Uid unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Get_Audit_Login_Uid";
   end Creds_Get_Audit_Login_Uid;

   -------------------
   -- Creds_Get_Tty --
   -------------------

   function Creds_Get_Tty (C : access Creds; Tty : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Tty unimplemented");
      return raise Program_Error with "Unimplemented function Creds_Get_Tty";
   end Creds_Get_Tty;

   ---------------------------
   -- Creds_Get_Unique_Name --
   ---------------------------

   function Creds_Get_Unique_Name
     (C : access Creds; Name : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Unique_Name unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Get_Unique_Name";
   end Creds_Get_Unique_Name;

   --------------------------------
   -- Creds_Get_Well_Known_Names --
   --------------------------------

   function Creds_Get_Well_Known_Names
     (C : access Creds; Names : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Well_Known_Names unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Get_Well_Known_Names";
   end Creds_Get_Well_Known_Names;

   ---------------------------
   -- Creds_Get_Description --
   ---------------------------

   function Creds_Get_Description
     (C : access Creds; Name : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Get_Description unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Creds_Get_Description";
   end Creds_Get_Description;

   ----------------
   -- Error_Free --
   ----------------

   procedure Error_Free (E : access Error) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Error_Free unimplemented");
      raise Program_Error with "Unimplemented procedure Error_Free";
   end Error_Free;

   ---------------
   -- Error_Set --
   ---------------

   function Error_Set
     (E : access Error; Name : String; Message : String) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Error_Set unimplemented");
      return raise Program_Error with "Unimplemented function Error_Set";
   end Error_Set;

   ----------------
   -- Error_Setf --
   ----------------

   function Error_Setf
     (E : access Error; Name : String; Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Error_Setf unimplemented");
      return raise Program_Error with "Unimplemented function Error_Setf";
   end Error_Setf;

   ---------------------
   -- Error_Set_Const --
   ---------------------

   function Error_Set_Const
     (E : access Error; Name : String; Message : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Error_Set_Const unimplemented");
      return raise Program_Error with "Unimplemented function Error_Set_Const";
   end Error_Set_Const;

   ---------------------
   -- Error_Set_Errno --
   ---------------------

   function Error_Set_Errno (E : access Error; Error : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Error_Set_Errno unimplemented");
      return raise Program_Error with "Unimplemented function Error_Set_Errno";
   end Error_Set_Errno;

   ----------------------
   -- Error_Set_Errnof --
   ----------------------

   function Error_Set_Errnof
     (E : access Error; Error : Int; Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Error_Set_Errnof unimplemented");
      return
      raise Program_Error with "Unimplemented function Error_Set_Errnof";
   end Error_Set_Errnof;

   -----------------------
   -- Error_Set_Errnofv --
   -----------------------

   function Error_Set_Errnofv
     (E  : access Error; Error : Int; Format : String;
      Ap : access System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Error_Set_Errnofv unimplemented");
      return
      raise Program_Error with "Unimplemented function Error_Set_Errnofv";
   end Error_Set_Errnofv;

   ---------------------
   -- Error_Get_Errno --
   ---------------------

   function Error_Get_Errno (E : access constant Error) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Error_Get_Errno unimplemented");
      return raise Program_Error with "Unimplemented function Error_Get_Errno";
   end Error_Get_Errno;

   ----------------
   -- Error_Copy --
   ----------------

   function Error_Copy
     (Dest : access Error; E : access constant Error) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Error_Copy unimplemented");
      return raise Program_Error with "Unimplemented function Error_Copy";
   end Error_Copy;

   ----------------
   -- Error_Move --
   ----------------

   function Error_Move (Dest : access Error; E : access Error) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Error_Move unimplemented");
      return raise Program_Error with "Unimplemented function Error_Move";
   end Error_Move;

   ------------------
   -- Error_Is_Set --
   ------------------

   function Error_Is_Set (E : access constant Error) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Error_Is_Set unimplemented");
      return raise Program_Error with "Unimplemented function Error_Is_Set";
   end Error_Is_Set;

   --------------------
   -- Error_Has_Name --
   --------------------

   function Error_Has_Name
     (E : access constant Error; Name : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Error_Has_Name unimplemented");
      return raise Program_Error with "Unimplemented function Error_Has_Name";
   end Error_Has_Name;

   -------------------
   -- Error_Add_Map --
   -------------------

   function Error_Add_Map (Map : access constant Error_Map) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Error_Add_Map unimplemented");
      return raise Program_Error with "Unimplemented function Error_Add_Map";
   end Error_Add_Map;

   -----------------
   -- Path_Encode --
   -----------------

   function Path_Encode
     (Prefix : String; External_Id : String; Ret_Path : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Path_Encode unimplemented");
      return raise Program_Error with "Unimplemented function Path_Encode";
   end Path_Encode;

   ----------------------
   -- Path_Encode_Many --
   ----------------------

   function Path_Encode_Many
     (C_Out : System.Address; Path_Template : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Path_Encode_Many unimplemented");
      return
      raise Program_Error with "Unimplemented function Path_Encode_Many";
   end Path_Encode_Many;

   -----------------
   -- Path_Decode --
   -----------------

   function Path_Decode
     (Path : String; Prefix : String; Ret_External_Id : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Path_Decode unimplemented");
      return raise Program_Error with "Unimplemented function Path_Decode";
   end Path_Decode;

   ----------------------
   -- Path_Decode_Many --
   ----------------------

   function Path_Decode_Many (Path : String; Path_Template : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Path_Decode_Many unimplemented");
      return
      raise Program_Error with "Unimplemented function Path_Decode_Many";
   end Path_Decode_Many;

   ---------------
   -- Track_New --
   ---------------

   function Track_New
     (Bus      : access Sd_Bus; Track : System.Address; Handler : Track_Handler_T;
      Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Track_New unimplemented");
      return raise Program_Error with "Unimplemented function Track_New";
   end Track_New;

   ---------------
   -- Track_Ref --
   ---------------

   function Track_Ref (T : access Track) return access Track'Class is
   begin
      pragma Compile_Time_Warning (Standard.True, "Track_Ref unimplemented");
      return raise Program_Error with "Unimplemented function Track_Ref";
   end Track_Ref;

   -----------------
   -- Track_Unref --
   -----------------

   function Track_Unref (T : access Track) return access Track'Class is
   begin
      pragma Compile_Time_Warning (Standard.True, "Track_Unref unimplemented");
      return raise Program_Error with "Unimplemented function Track_Unref";
   end Track_Unref;

   -------------------
   -- Track_Get_Bus --
   -------------------

   function Track_Get_Bus (T : access Track) return access Sd_Bus'Class is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Get_Bus unimplemented");
      return raise Program_Error with "Unimplemented function Track_Get_Bus";
   end Track_Get_Bus;

   ------------------------
   -- Track_Get_Userdata --
   ------------------------

   function Track_Get_Userdata (T : access Track) return System.Address is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Get_Userdata unimplemented");
      return
      raise Program_Error with "Unimplemented function Track_Get_Userdata";
   end Track_Get_Userdata;

   ------------------------
   -- Track_Set_Userdata --
   ------------------------

   function Track_Set_Userdata
     (T : access Track; Userdata : System.Address) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Set_Userdata unimplemented");
      return
      raise Program_Error with "Unimplemented function Track_Set_Userdata";
   end Track_Set_Userdata;

   ----------------------
   -- Track_Add_Sender --
   ----------------------

   function Track_Add_Sender
     (T : access Track; M : access Message'Class) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Add_Sender unimplemented");
      return
      raise Program_Error with "Unimplemented function Track_Add_Sender";
   end Track_Add_Sender;

   -------------------------
   -- Track_Remove_Sender --
   -------------------------

   function Track_Remove_Sender
     (T : access Track; M : access Message'Class) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Remove_Sender unimplemented");
      return
      raise Program_Error with "Unimplemented function Track_Remove_Sender";
   end Track_Remove_Sender;

   --------------------
   -- Track_Add_Name --
   --------------------

   function Track_Add_Name (T : access Track; Name : String) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Add_Name unimplemented");
      return raise Program_Error with "Unimplemented function Track_Add_Name";
   end Track_Add_Name;

   -----------------------
   -- Track_Remove_Name --
   -----------------------

   function Track_Remove_Name (T : access Track; Name : String) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Remove_Name unimplemented");
      return
      raise Program_Error with "Unimplemented function Track_Remove_Name";
   end Track_Remove_Name;

   -------------------------
   -- Track_Set_Recursive --
   -------------------------

   function Track_Set_Recursive (T : access Track; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Set_Recursive unimplemented");
      return
      raise Program_Error with "Unimplemented function Track_Set_Recursive";
   end Track_Set_Recursive;

   -------------------------
   -- Track_Get_Recursive --
   -------------------------

   function Track_Get_Recursive (T : access Track) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Get_Recursive unimplemented");
      return
      raise Program_Error with "Unimplemented function Track_Get_Recursive";
   end Track_Get_Recursive;

   -----------------
   -- Track_Count --
   -----------------

   function Track_Count (T : access Track) return Unsigned is
   begin
      pragma Compile_Time_Warning (Standard.True, "Track_Count unimplemented");
      return raise Program_Error with "Unimplemented function Track_Count";
   end Track_Count;

   ------------------------
   -- Track_Count_Sender --
   ------------------------

   function Track_Count_Sender
     (T : access Track; M : access Message'Class) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Count_Sender unimplemented");
      return
      raise Program_Error with "Unimplemented function Track_Count_Sender";
   end Track_Count_Sender;

   ----------------------
   -- Track_Count_Name --
   ----------------------

   function Track_Count_Name (T : access Track; Name : String) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Count_Name unimplemented");
      return
      raise Program_Error with "Unimplemented function Track_Count_Name";
   end Track_Count_Name;

   --------------------
   -- Track_Contains --
   --------------------

   function Track_Contains (T : access Track; Name : String) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Contains unimplemented");
      return raise Program_Error with "Unimplemented function Track_Contains";
   end Track_Contains;

   -----------------
   -- Track_First --
   -----------------

   function Track_First (T : access Track) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Track_First unimplemented");
      return raise Program_Error with "Unimplemented function Track_First";
   end Track_First;

   ----------------
   -- Track_Next --
   ----------------

   function Track_Next (T : access Track) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Track_Next unimplemented");
      return raise Program_Error with "Unimplemented function Track_Next";
   end Track_Next;

   --------------------------------
   -- Track_Set_Destroy_Callback --
   --------------------------------

   function Track_Set_Destroy_Callback
     (S : access Track; Callback : Destroy_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Set_Destroy_Callback unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Track_Set_Destroy_Callback";
   end Track_Set_Destroy_Callback;

   --------------------------------
   -- Track_Get_Destroy_Callback --
   --------------------------------

   function Track_Get_Destroy_Callback
     (S : access Track; Ret : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Get_Destroy_Callback unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Track_Get_Destroy_Callback";
   end Track_Get_Destroy_Callback;

   ------------
   -- Unrefp --
   ------------

   procedure Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Unrefp";
   end Unrefp;

   ------------------
   -- Close_Unrefp --
   ------------------

   procedure Close_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Close_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Close_Unrefp";
   end Close_Unrefp;

   ------------------------
   -- Flush_Close_Unrefp --
   ------------------------

   procedure Flush_Close_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Flush_Close_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Flush_Close_Unrefp";
   end Flush_Close_Unrefp;

   -----------------
   -- Slot_Unrefp --
   -----------------

   procedure Slot_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Slot_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Slot_Unrefp";
   end Slot_Unrefp;

   --------------------
   -- Message_Unrefp --
   --------------------

   procedure Message_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Message_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Message_Unrefp";
   end Message_Unrefp;

   ------------------
   -- Creds_Unrefp --
   ------------------

   procedure Creds_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Creds_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Creds_Unrefp";
   end Creds_Unrefp;

   ------------------
   -- Track_Unrefp --
   ------------------

   procedure Track_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Track_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Track_Unrefp";
   end Track_Unrefp;

end Systemd.Bus;
