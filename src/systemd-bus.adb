pragma Ada_2012;
package body Systemd.Bus is
   pragma Warnings (Off);
   --------------------
   -- Sd_Bus_Default --
   --------------------

   function Sd_Bus_Default (Ret : System.Address) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Default unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Default";
   end Sd_Bus_Default;

   -------------------------
   -- Sd_Bus_Default_User --
   -------------------------

   function Sd_Bus_Default_User (Ret : System.Address) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Default_User unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Default_User";
   end Sd_Bus_Default_User;

   ---------------------------
   -- Sd_Bus_Default_System --
   ---------------------------

   function Sd_Bus_Default_System (Ret : System.Address) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Default_System unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Default_System";
   end Sd_Bus_Default_System;

   -----------------
   -- Sd_Bus_Open --
   -----------------

   function Sd_Bus_Open (Ret : System.Address) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Sd_Bus_Open unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Open";
   end Sd_Bus_Open;

   ----------------------------------
   -- Sd_Bus_Open_With_Description --
   ----------------------------------

   function Sd_Bus_Open_With_Description
     (Ret : System.Address; Description : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Open_With_Description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Open_With_Description";
   end Sd_Bus_Open_With_Description;

   ----------------------
   -- Sd_Bus_Open_User --
   ----------------------

   function Sd_Bus_Open_User (Ret : System.Address) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Open_User unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Open_User";
   end Sd_Bus_Open_User;

   ---------------------------------------
   -- Sd_Bus_Open_User_With_Description --
   ---------------------------------------

   function Sd_Bus_Open_User_With_Description
     (Ret : System.Address; Description : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Open_User_With_Description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Open_User_With_Description";
   end Sd_Bus_Open_User_With_Description;

   ------------------------
   -- Sd_Bus_Open_System --
   ------------------------

   function Sd_Bus_Open_System (Ret : System.Address) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Open_System unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Open_System";
   end Sd_Bus_Open_System;

   -----------------------------------------
   -- Sd_Bus_Open_System_With_Description --
   -----------------------------------------

   function Sd_Bus_Open_System_With_Description
     (Ret : System.Address; Description : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Open_System_With_Description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Open_System_With_Description";
   end Sd_Bus_Open_System_With_Description;

   -------------------------------
   -- Sd_Bus_Open_System_Remote --
   -------------------------------

   function Sd_Bus_Open_System_Remote
     (Ret : System.Address; Host : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Open_System_Remote unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Open_System_Remote";
   end Sd_Bus_Open_System_Remote;

   --------------------------------
   -- Sd_Bus_Open_System_Machine --
   --------------------------------

   function Sd_Bus_Open_System_Machine
     (Ret : System.Address; Machine : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Open_System_Machine unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Open_System_Machine";
   end Sd_Bus_Open_System_Machine;

   ----------------
   -- Sd_Bus_New --
   ----------------

   function Sd_Bus_New (Ret : System.Address) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Sd_Bus_New unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_New";
   end Sd_Bus_New;

   ------------------------
   -- Sd_Bus_Set_Address --
   ------------------------

   function Sd_Bus_Set_Address
     (Bus : access Sd_Bus; Address : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Address unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Set_Address";
   end Sd_Bus_Set_Address;

   -------------------
   -- Sd_Bus_Set_Fd --
   -------------------

   function Sd_Bus_Set_Fd
     (Bus : access Sd_Bus; Input_Fd : Int; Output_Fd : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Fd unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Set_Fd";
   end Sd_Bus_Set_Fd;

   ---------------------
   -- Sd_Bus_Set_Exec --
   ---------------------

   function Sd_Bus_Set_Exec
     (Bus : access Sd_Bus; Path : String; Argv : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Exec unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Set_Exec";
   end Sd_Bus_Set_Exec;

   ------------------------
   -- Sd_Bus_Get_Address --
   ------------------------

   function Sd_Bus_Get_Address
     (Bus : access Sd_Bus; Address : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Address unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Get_Address";
   end Sd_Bus_Get_Address;

   ---------------------------
   -- Sd_Bus_Set_Bus_Client --
   ---------------------------

   function Sd_Bus_Set_Bus_Client (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Bus_Client unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Set_Bus_Client";
   end Sd_Bus_Set_Bus_Client;

   --------------------------
   -- Sd_Bus_Is_Bus_Client --
   --------------------------

   function Sd_Bus_Is_Bus_Client (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Is_Bus_Client unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Is_Bus_Client";
   end Sd_Bus_Is_Bus_Client;

   -----------------------
   -- Sd_Bus_Set_Server --
   -----------------------

   function Sd_Bus_Set_Server
     (Bus : access Sd_Bus; B : Int; Bus_Id : Systemd.Id128.Id128_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Server unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Set_Server";
   end Sd_Bus_Set_Server;

   ----------------------
   -- Sd_Bus_Is_Server --
   ----------------------

   function Sd_Bus_Is_Server (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Is_Server unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Is_Server";
   end Sd_Bus_Is_Server;

   --------------------------
   -- Sd_Bus_Set_Anonymous --
   --------------------------

   function Sd_Bus_Set_Anonymous (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Anonymous unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Set_Anonymous";
   end Sd_Bus_Set_Anonymous;

   -------------------------
   -- Sd_Bus_Is_Anonymous --
   -------------------------

   function Sd_Bus_Is_Anonymous (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Is_Anonymous unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Is_Anonymous";
   end Sd_Bus_Is_Anonymous;

   ------------------------
   -- Sd_Bus_Set_Trusted --
   ------------------------

   function Sd_Bus_Set_Trusted (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Trusted unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Set_Trusted";
   end Sd_Bus_Set_Trusted;

   -----------------------
   -- Sd_Bus_Is_Trusted --
   -----------------------

   function Sd_Bus_Is_Trusted (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Is_Trusted unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Is_Trusted";
   end Sd_Bus_Is_Trusted;

   ------------------------
   -- Sd_Bus_Set_Monitor --
   ------------------------

   function Sd_Bus_Set_Monitor (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Monitor unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Set_Monitor";
   end Sd_Bus_Set_Monitor;

   -----------------------
   -- Sd_Bus_Is_Monitor --
   -----------------------

   function Sd_Bus_Is_Monitor (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Is_Monitor unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Is_Monitor";
   end Sd_Bus_Is_Monitor;

   ----------------------------
   -- Sd_Bus_Set_Description --
   ----------------------------

   function Sd_Bus_Set_Description
     (Bus : access Sd_Bus; Description : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Set_Description";
   end Sd_Bus_Set_Description;

   ----------------------------
   -- Sd_Bus_Get_Description --
   ----------------------------

   function Sd_Bus_Get_Description
     (Bus : access Sd_Bus; Description : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Description";
   end Sd_Bus_Get_Description;

   ----------------------------
   -- Sd_Bus_Negotiate_Creds --
   ----------------------------

   function Sd_Bus_Negotiate_Creds
     (Bus : access Sd_Bus; B : Int; Creds_Mask : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Negotiate_Creds unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Negotiate_Creds";
   end Sd_Bus_Negotiate_Creds;

   --------------------------------
   -- Sd_Bus_Negotiate_Timestamp --
   --------------------------------

   function Sd_Bus_Negotiate_Timestamp
     (Bus : access Sd_Bus; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Negotiate_Timestamp unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Negotiate_Timestamp";
   end Sd_Bus_Negotiate_Timestamp;

   --------------------------
   -- Sd_Bus_Negotiate_Fds --
   --------------------------

   function Sd_Bus_Negotiate_Fds (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Negotiate_Fds unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Negotiate_Fds";
   end Sd_Bus_Negotiate_Fds;

   ---------------------
   -- Sd_Bus_Can_Send --
   ---------------------

   function Sd_Bus_Can_Send (Bus : access Sd_Bus; C_Type : Char) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Can_Send unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Can_Send";
   end Sd_Bus_Can_Send;

   ---------------------------
   -- Sd_Bus_Get_Creds_Mask --
   ---------------------------

   function Sd_Bus_Get_Creds_Mask
     (Bus : access Sd_Bus; Creds_Mask : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Creds_Mask unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Creds_Mask";
   end Sd_Bus_Get_Creds_Mask;

   ------------------------------------------------
   -- Sd_Bus_Set_Allow_Interactive_Authorization --
   ------------------------------------------------

   function Sd_Bus_Set_Allow_Interactive_Authorization
     (Bus : access Sd_Bus; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True,
         "Sd_Bus_Set_Allow_Interactive_Authorization unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Set_Allow_Interactive_Authorization";
   end Sd_Bus_Set_Allow_Interactive_Authorization;

   ------------------------------------------------
   -- Sd_Bus_Get_Allow_Interactive_Authorization --
   ------------------------------------------------

   function Sd_Bus_Get_Allow_Interactive_Authorization
     (Bus : access Sd_Bus) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True,
         "Sd_Bus_Get_Allow_Interactive_Authorization unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Allow_Interactive_Authorization";
   end Sd_Bus_Get_Allow_Interactive_Authorization;

   -----------------------------------
   -- Sd_Bus_Set_Exit_On_Disconnect --
   -----------------------------------

   function Sd_Bus_Set_Exit_On_Disconnect
     (Bus : access Sd_Bus; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Exit_On_Disconnect unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Set_Exit_On_Disconnect";
   end Sd_Bus_Set_Exit_On_Disconnect;

   -----------------------------------
   -- Sd_Bus_Get_Exit_On_Disconnect --
   -----------------------------------

   function Sd_Bus_Get_Exit_On_Disconnect (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Exit_On_Disconnect unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Exit_On_Disconnect";
   end Sd_Bus_Get_Exit_On_Disconnect;

   ------------------------------
   -- Sd_Bus_Set_Close_On_Exit --
   ------------------------------

   function Sd_Bus_Set_Close_On_Exit (Bus : access Sd_Bus; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Close_On_Exit unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Set_Close_On_Exit";
   end Sd_Bus_Set_Close_On_Exit;

   ------------------------------
   -- Sd_Bus_Get_Close_On_Exit --
   ------------------------------

   function Sd_Bus_Get_Close_On_Exit (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Close_On_Exit unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Close_On_Exit";
   end Sd_Bus_Get_Close_On_Exit;

   ---------------------------
   -- Sd_Bus_Set_Watch_Bind --
   ---------------------------

   function Sd_Bus_Set_Watch_Bind (Bus : access Sd_Bus; B : Int) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Watch_Bind unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Set_Watch_Bind";
   end Sd_Bus_Set_Watch_Bind;

   ---------------------------
   -- Sd_Bus_Get_Watch_Bind --
   ---------------------------

   function Sd_Bus_Get_Watch_Bind (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Watch_Bind unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Watch_Bind";
   end Sd_Bus_Get_Watch_Bind;

   ---------------------------------
   -- Sd_Bus_Set_Connected_Signal --
   ---------------------------------

   function Sd_Bus_Set_Connected_Signal
     (Bus : access Sd_Bus; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Connected_Signal unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Set_Connected_Signal";
   end Sd_Bus_Set_Connected_Signal;

   ---------------------------------
   -- Sd_Bus_Get_Connected_Signal --
   ---------------------------------

   function Sd_Bus_Get_Connected_Signal (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Connected_Signal unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Connected_Signal";
   end Sd_Bus_Get_Connected_Signal;

   -----------------------
   -- Sd_Bus_Set_Sender --
   -----------------------

   function Sd_Bus_Set_Sender (Bus : access Sd_Bus; Sender : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Sender unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Set_Sender";
   end Sd_Bus_Set_Sender;

   -----------------------
   -- Sd_Bus_Get_Sender --
   -----------------------

   function Sd_Bus_Get_Sender
     (Bus : access Sd_Bus; Ret : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Sender unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Get_Sender";
   end Sd_Bus_Get_Sender;

   ------------------
   -- Sd_Bus_Start --
   ------------------

   function Sd_Bus_Start (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Start unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Start";
   end Sd_Bus_Start;

   ----------------------
   -- Sd_Bus_Try_Close --
   ----------------------

   function Sd_Bus_Try_Close (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Try_Close unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Try_Close";
   end Sd_Bus_Try_Close;

   ------------------
   -- Sd_Bus_Close --
   ------------------

   procedure Sd_Bus_Close (Bus : access Sd_Bus) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Close unimplemented");
      raise Program_Error with "Unimplemented procedure Sd_Bus_Close";
   end Sd_Bus_Close;

   ----------------
   -- Sd_Bus_Ref --
   ----------------

   function Sd_Bus_Ref (Bus : access Sd_Bus) return access Sd_Bus is
   begin
      pragma Compile_Time_Warning (Standard.True, "Sd_Bus_Ref unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Ref";
   end Sd_Bus_Ref;

   ------------------
   -- Sd_Bus_Unref --
   ------------------

   function Sd_Bus_Unref (Bus : access Sd_Bus) return access Sd_Bus is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Unref unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Unref";
   end Sd_Bus_Unref;

   ------------------------
   -- Sd_Bus_Close_Unref --
   ------------------------

   function Sd_Bus_Close_Unref (Bus : access Sd_Bus) return access Sd_Bus is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Close_Unref unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Close_Unref";
   end Sd_Bus_Close_Unref;

   ------------------------------
   -- Sd_Bus_Flush_Close_Unref --
   ------------------------------

   function Sd_Bus_Flush_Close_Unref (Bus : access Sd_Bus) return access Sd_Bus
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Flush_Close_Unref unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Flush_Close_Unref";
   end Sd_Bus_Flush_Close_Unref;

   --------------------------------
   -- Sd_Bus_Default_Flush_Close --
   --------------------------------

   procedure Sd_Bus_Default_Flush_Close is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Default_Flush_Close unimplemented");
      raise Program_Error
        with "Unimplemented procedure Sd_Bus_Default_Flush_Close";
   end Sd_Bus_Default_Flush_Close;

   --------------------
   -- Sd_Bus_Is_Open --
   --------------------

   function Sd_Bus_Is_Open (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Is_Open unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Is_Open";
   end Sd_Bus_Is_Open;

   ---------------------
   -- Sd_Bus_Is_Ready --
   ---------------------

   function Sd_Bus_Is_Ready (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Is_Ready unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Is_Ready";
   end Sd_Bus_Is_Ready;

   -----------------------
   -- Sd_Bus_Get_Bus_Id --
   -----------------------

   function Sd_Bus_Get_Bus_Id
     (Bus : access Sd_Bus; Id : Systemd.Id128.Id128_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Bus_Id unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Get_Bus_Id";
   end Sd_Bus_Get_Bus_Id;

   ----------------------
   -- Sd_Bus_Get_Scope --
   ----------------------

   function Sd_Bus_Get_Scope
     (Bus : access Sd_Bus; Scope : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Scope unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Get_Scope";
   end Sd_Bus_Get_Scope;

   --------------------
   -- Sd_Bus_Get_Tid --
   --------------------

   function Sd_Bus_Get_Tid (Bus : access Sd_Bus; Tid : access Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Tid unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Get_Tid";
   end Sd_Bus_Get_Tid;

   ----------------------------
   -- Sd_Bus_Get_Owner_Creds --
   ----------------------------

   function Sd_Bus_Get_Owner_Creds
     (Bus : access Sd_Bus; Creds_Mask : Unsigned_Long; Ret : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Owner_Creds unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Owner_Creds";
   end Sd_Bus_Get_Owner_Creds;

   -----------------
   -- Sd_Bus_Send --
   -----------------

   function Sd_Bus_Send
     (Bus    : access Sd_Bus; M : access Sd_Bus_Message;
      Cookie : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Sd_Bus_Send unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Send";
   end Sd_Bus_Send;

   --------------------
   -- Sd_Bus_Send_To --
   --------------------

   function Sd_Bus_Send_To
     (Bus    : access Sd_Bus; M : access Sd_Bus_Message; Destination : String;
      Cookie : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Send_To unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Send_To";
   end Sd_Bus_Send_To;

   -----------------
   -- Sd_Bus_Call --
   -----------------

   function Sd_Bus_Call
     (Bus : access Sd_Bus; M : access Sd_Bus_Message; Usec : Unsigned_Long;
      Ret_Error : access Sd_Bus_Error; Reply : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Sd_Bus_Call unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Call";
   end Sd_Bus_Call;

   -----------------------
   -- Sd_Bus_Call_Async --
   -----------------------

   function Sd_Bus_Call_Async
     (Bus : access Sd_Bus; Slot : System.Address; M : access Sd_Bus_Message;
      Callback : Sd_Bus_Message_Handler_T; Userdata : System.Address;
      Usec     : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Call_Async unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Call_Async";
   end Sd_Bus_Call_Async;

   -------------------
   -- Sd_Bus_Get_Fd --
   -------------------

   function Sd_Bus_Get_Fd (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Fd unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Get_Fd";
   end Sd_Bus_Get_Fd;

   -----------------------
   -- Sd_Bus_Get_Events --
   -----------------------

   function Sd_Bus_Get_Events (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Events unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Get_Events";
   end Sd_Bus_Get_Events;

   ------------------------
   -- Sd_Bus_Get_Timeout --
   ------------------------

   function Sd_Bus_Get_Timeout
     (Bus : access Sd_Bus; Timeout_Usec : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Timeout unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Get_Timeout";
   end Sd_Bus_Get_Timeout;

   --------------------
   -- Sd_Bus_Process --
   --------------------

   function Sd_Bus_Process (Bus : access Sd_Bus; R : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Process unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Process";
   end Sd_Bus_Process;

   -----------------------------
   -- Sd_Bus_Process_Priority --
   -----------------------------

   function Sd_Bus_Process_Priority
     (Bus : access Sd_Bus; Max_Priority : Long; R : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Process_Priority unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Process_Priority";
   end Sd_Bus_Process_Priority;

   -----------------
   -- Sd_Bus_Wait --
   -----------------

   function Sd_Bus_Wait
     (Bus : access Sd_Bus; Timeout_Usec : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Sd_Bus_Wait unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Wait";
   end Sd_Bus_Wait;

   ------------------
   -- Sd_Bus_Flush --
   ------------------

   function Sd_Bus_Flush (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Flush unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Flush";
   end Sd_Bus_Flush;

   -----------------------------
   -- Sd_Bus_Get_Current_Slot --
   -----------------------------

   function Sd_Bus_Get_Current_Slot
     (Bus : access Sd_Bus) return access Sd_Bus_Slot
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Current_Slot unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Current_Slot";
   end Sd_Bus_Get_Current_Slot;

   --------------------------------
   -- Sd_Bus_Get_Current_Message --
   --------------------------------

   function Sd_Bus_Get_Current_Message
     (Bus : access Sd_Bus) return access Sd_Bus_Message
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Current_Message unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Current_Message";
   end Sd_Bus_Get_Current_Message;

   --------------------------------
   -- Sd_Bus_Get_Current_Handler --
   --------------------------------

   function Sd_Bus_Get_Current_Handler
     (Bus : access Sd_Bus) return Sd_Bus_Message_Handler_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Current_Handler unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Current_Handler";
   end Sd_Bus_Get_Current_Handler;

   ---------------------------------
   -- Sd_Bus_Get_Current_Userdata --
   ---------------------------------

   function Sd_Bus_Get_Current_Userdata
     (Bus : access Sd_Bus) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Current_Userdata unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Current_Userdata";
   end Sd_Bus_Get_Current_Userdata;

   -------------------------
   -- Sd_Bus_Attach_Event --
   -------------------------

   function Sd_Bus_Attach_Event
     (Bus : access Sd_Bus; E : access Systemd.Event.Sd_Event; Priority : Int)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Attach_Event unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Attach_Event";
   end Sd_Bus_Attach_Event;

   -------------------------
   -- Sd_Bus_Detach_Event --
   -------------------------

   function Sd_Bus_Detach_Event (Bus : access Sd_Bus) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Detach_Event unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Detach_Event";
   end Sd_Bus_Detach_Event;

   ----------------------
   -- Sd_Bus_Get_Event --
   ----------------------

   function Sd_Bus_Get_Event
     (Bus : access Sd_Bus) return access Systemd.Event.Sd_Event
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Event unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Get_Event";
   end Sd_Bus_Get_Event;

   ------------------------------
   -- Sd_Bus_Get_N_Queued_Read --
   ------------------------------

   function Sd_Bus_Get_N_Queued_Read
     (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_N_Queued_Read unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_N_Queued_Read";
   end Sd_Bus_Get_N_Queued_Read;

   -------------------------------
   -- Sd_Bus_Get_N_Queued_Write --
   -------------------------------

   function Sd_Bus_Get_N_Queued_Write
     (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_N_Queued_Write unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_N_Queued_Write";
   end Sd_Bus_Get_N_Queued_Write;

   ------------------------------------
   -- Sd_Bus_Set_Method_Call_Timeout --
   ------------------------------------

   function Sd_Bus_Set_Method_Call_Timeout
     (Bus : access Sd_Bus; Usec : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Method_Call_Timeout unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Set_Method_Call_Timeout";
   end Sd_Bus_Set_Method_Call_Timeout;

   ------------------------------------
   -- Sd_Bus_Get_Method_Call_Timeout --
   ------------------------------------

   function Sd_Bus_Get_Method_Call_Timeout
     (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Method_Call_Timeout unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Method_Call_Timeout";
   end Sd_Bus_Get_Method_Call_Timeout;

   -----------------------
   -- Sd_Bus_Add_Filter --
   -----------------------

   function Sd_Bus_Add_Filter
     (Bus      : access Sd_Bus; Slot : System.Address;
      Callback : Sd_Bus_Message_Handler_T; Userdata : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Add_Filter unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Add_Filter";
   end Sd_Bus_Add_Filter;

   ----------------------
   -- Sd_Bus_Add_Match --
   ----------------------

   function Sd_Bus_Add_Match
     (Bus      : access Sd_Bus; Slot : System.Address; Match : String;
      Callback : Sd_Bus_Message_Handler_T; Userdata : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Add_Match unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Add_Match";
   end Sd_Bus_Add_Match;

   ----------------------------
   -- Sd_Bus_Add_Match_Async --
   ----------------------------

   function Sd_Bus_Add_Match_Async
     (Bus              : access Sd_Bus; Slot : System.Address; Match : String;
      Callback         : Sd_Bus_Message_Handler_T;
      Install_Callback : Sd_Bus_Message_Handler_T; Userdata : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Add_Match_Async unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Add_Match_Async";
   end Sd_Bus_Add_Match_Async;

   -----------------------
   -- Sd_Bus_Add_Object --
   -----------------------

   function Sd_Bus_Add_Object
     (Bus      : access Sd_Bus; Slot : System.Address; Path : String;
      Callback : Sd_Bus_Message_Handler_T; Userdata : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Add_Object unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Add_Object";
   end Sd_Bus_Add_Object;

   -------------------------
   -- Sd_Bus_Add_Fallback --
   -------------------------

   function Sd_Bus_Add_Fallback
     (Bus      : access Sd_Bus; Slot : System.Address; Prefix : String;
      Callback : Sd_Bus_Message_Handler_T; Userdata : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Add_Fallback unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Add_Fallback";
   end Sd_Bus_Add_Fallback;

   ------------------------------
   -- Sd_Bus_Add_Object_Vtable --
   ------------------------------

   function Sd_Bus_Add_Object_Vtable
     (Bus         : access Sd_Bus; Slot : System.Address; Path : String;
      C_Interface : String;
      Vtable      : access constant Systemd.Bus.Vtable.Sd_Bus_Vtable;
      Userdata    : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Add_Object_Vtable unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Add_Object_Vtable";
   end Sd_Bus_Add_Object_Vtable;

   --------------------------------
   -- Sd_Bus_Add_Fallback_Vtable --
   --------------------------------

   function Sd_Bus_Add_Fallback_Vtable
     (Bus         : access Sd_Bus; Slot : System.Address; Prefix : String;
      C_Interface : String;
      Vtable      : access constant Systemd.Bus.Vtable.Sd_Bus_Vtable;
      Find        : Sd_Bus_Object_Find_T; Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Add_Fallback_Vtable unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Add_Fallback_Vtable";
   end Sd_Bus_Add_Fallback_Vtable;

   --------------------------------
   -- Sd_Bus_Add_Node_Enumerator --
   --------------------------------

   function Sd_Bus_Add_Node_Enumerator
     (Bus      : access Sd_Bus; Slot : System.Address; Path : String;
      Callback : Sd_Bus_Node_Enumerator_T; Userdata : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Add_Node_Enumerator unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Add_Node_Enumerator";
   end Sd_Bus_Add_Node_Enumerator;

   -------------------------------
   -- Sd_Bus_Add_Object_Manager --
   -------------------------------

   function Sd_Bus_Add_Object_Manager
     (Bus : access Sd_Bus; Slot : System.Address; Path : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Add_Object_Manager unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Add_Object_Manager";
   end Sd_Bus_Add_Object_Manager;

   ---------------------
   -- Sd_Bus_Slot_Ref --
   ---------------------

   function Sd_Bus_Slot_Ref
     (Slot : access Sd_Bus_Slot) return access Sd_Bus_Slot
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Ref unimplemented");
      return raise Program_Error with "Unimplemented function Sd_Bus_Slot_Ref";
   end Sd_Bus_Slot_Ref;

   -----------------------
   -- Sd_Bus_Slot_Unref --
   -----------------------

   function Sd_Bus_Slot_Unref
     (Slot : access Sd_Bus_Slot) return access Sd_Bus_Slot
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Unref unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Slot_Unref";
   end Sd_Bus_Slot_Unref;

   -------------------------
   -- Sd_Bus_Slot_Get_Bus --
   -------------------------

   function Sd_Bus_Slot_Get_Bus
     (Slot : access Sd_Bus_Slot) return access Sd_Bus
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Get_Bus unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Slot_Get_Bus";
   end Sd_Bus_Slot_Get_Bus;

   ------------------------------
   -- Sd_Bus_Slot_Get_Userdata --
   ------------------------------

   function Sd_Bus_Slot_Get_Userdata
     (Slot : access Sd_Bus_Slot) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Get_Userdata unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Get_Userdata";
   end Sd_Bus_Slot_Get_Userdata;

   ------------------------------
   -- Sd_Bus_Slot_Set_Userdata --
   ------------------------------

   function Sd_Bus_Slot_Set_Userdata
     (Slot : access Sd_Bus_Slot; Userdata : System.Address)
      return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Set_Userdata unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Set_Userdata";
   end Sd_Bus_Slot_Set_Userdata;

   ---------------------------------
   -- Sd_Bus_Slot_Set_Description --
   ---------------------------------

   function Sd_Bus_Slot_Set_Description
     (Slot : access Sd_Bus_Slot; Description : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Set_Description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Set_Description";
   end Sd_Bus_Slot_Set_Description;

   ---------------------------------
   -- Sd_Bus_Slot_Get_Description --
   ---------------------------------

   function Sd_Bus_Slot_Get_Description
     (Slot : access Sd_Bus_Slot; Description : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Get_Description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Get_Description";
   end Sd_Bus_Slot_Get_Description;

   ------------------------------
   -- Sd_Bus_Slot_Get_Floating --
   ------------------------------

   function Sd_Bus_Slot_Get_Floating (Slot : access Sd_Bus_Slot) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Get_Floating unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Get_Floating";
   end Sd_Bus_Slot_Get_Floating;

   ------------------------------
   -- Sd_Bus_Slot_Set_Floating --
   ------------------------------

   function Sd_Bus_Slot_Set_Floating
     (Slot : access Sd_Bus_Slot; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Set_Floating unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Set_Floating";
   end Sd_Bus_Slot_Set_Floating;

   --------------------------------------
   -- Sd_Bus_Slot_Set_Destroy_Callback --
   --------------------------------------

   function Sd_Bus_Slot_Set_Destroy_Callback
     (S : access Sd_Bus_Slot; Callback : Sd_Bus_Destroy_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Set_Destroy_Callback unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Set_Destroy_Callback";
   end Sd_Bus_Slot_Set_Destroy_Callback;

   --------------------------------------
   -- Sd_Bus_Slot_Get_Destroy_Callback --
   --------------------------------------

   function Sd_Bus_Slot_Get_Destroy_Callback
     (S : access Sd_Bus_Slot; Callback : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Get_Destroy_Callback unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Get_Destroy_Callback";
   end Sd_Bus_Slot_Get_Destroy_Callback;

   -------------------------------------
   -- Sd_Bus_Slot_Get_Current_Message --
   -------------------------------------

   function Sd_Bus_Slot_Get_Current_Message
     (Slot : access Sd_Bus_Slot) return access Sd_Bus_Message
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Get_Current_Message unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Get_Current_Message";
   end Sd_Bus_Slot_Get_Current_Message;

   -------------------------------------
   -- Sd_Bus_Slot_Get_Current_Handler --
   -------------------------------------

   function Sd_Bus_Slot_Get_Current_Handler
     (Slot : access Sd_Bus_Slot) return Sd_Bus_Message_Handler_T
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Get_Current_Handler unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Get_Current_Handler";
   end Sd_Bus_Slot_Get_Current_Handler;

   --------------------------------------
   -- Sd_Bus_Slot_Get_Current_Userdata --
   --------------------------------------

   function Sd_Bus_Slot_Get_Current_Userdata
     (Slot : access Sd_Bus_Slot) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Get_Current_Userdata unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Slot_Get_Current_Userdata";
   end Sd_Bus_Slot_Get_Current_Userdata;

   ------------------------
   -- Sd_Bus_Message_New --
   ------------------------

   function Sd_Bus_Message_New
     (Bus : access Sd_Bus; M : System.Address; C_Type : Unsigned_Char)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_New unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Message_New";
   end Sd_Bus_Message_New;

   -------------------------------
   -- Sd_Bus_Message_New_Signal --
   -------------------------------

   function Sd_Bus_Message_New_Signal
     (Bus         : access Sd_Bus; M : System.Address; Path : String;
      C_Interface : String; Member : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_New_Signal unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_New_Signal";
   end Sd_Bus_Message_New_Signal;

   ------------------------------------
   -- Sd_Bus_Message_New_Method_Call --
   ------------------------------------

   function Sd_Bus_Message_New_Method_Call
     (Bus  : access Sd_Bus; M : System.Address; Destination : String;
      Path : String; C_Interface : String; Member : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_New_Method_Call unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_New_Method_Call";
   end Sd_Bus_Message_New_Method_Call;

   --------------------------------------
   -- Sd_Bus_Message_New_Method_Return --
   --------------------------------------

   function Sd_Bus_Message_New_Method_Return
     (Call : access Sd_Bus_Message; M : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_New_Method_Return unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_New_Method_Return";
   end Sd_Bus_Message_New_Method_Return;

   -------------------------------------
   -- Sd_Bus_Message_New_Method_Error --
   -------------------------------------

   function Sd_Bus_Message_New_Method_Error
     (Call : access Sd_Bus_Message; M : System.Address;
      E    : access constant Sd_Bus_Error) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_New_Method_Error unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_New_Method_Error";
   end Sd_Bus_Message_New_Method_Error;

   --------------------------------------
   -- Sd_Bus_Message_New_Method_Errorf --
   --------------------------------------

   function Sd_Bus_Message_New_Method_Errorf
     (Call   : access Sd_Bus_Message; M : System.Address; Name : String;
      Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_New_Method_Errorf unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_New_Method_Errorf";
   end Sd_Bus_Message_New_Method_Errorf;

   -------------------------------------
   -- Sd_Bus_Message_New_Method_Errno --
   -------------------------------------

   function Sd_Bus_Message_New_Method_Errno
     (Call : access Sd_Bus_Message; M : System.Address; Error : Int;
      E    : access constant Sd_Bus_Error) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_New_Method_Errno unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_New_Method_Errno";
   end Sd_Bus_Message_New_Method_Errno;

   --------------------------------------
   -- Sd_Bus_Message_New_Method_Errnof --
   --------------------------------------

   function Sd_Bus_Message_New_Method_Errnof
     (Call   : access Sd_Bus_Message; M : System.Address; Error : Int;
      Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_New_Method_Errnof unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_New_Method_Errnof";
   end Sd_Bus_Message_New_Method_Errnof;

   ------------------------
   -- Sd_Bus_Message_Ref --
   ------------------------

   function Sd_Bus_Message_Ref
     (M : access Sd_Bus_Message) return access Sd_Bus_Message
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Ref unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Message_Ref";
   end Sd_Bus_Message_Ref;

   --------------------------
   -- Sd_Bus_Message_Unref --
   --------------------------

   function Sd_Bus_Message_Unref
     (M : access Sd_Bus_Message) return access Sd_Bus_Message
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Unref unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Message_Unref";
   end Sd_Bus_Message_Unref;

   -------------------------
   -- Sd_Bus_Message_Seal --
   -------------------------

   function Sd_Bus_Message_Seal
     (M            : access Sd_Bus_Message; Cookie : Unsigned_Long;
      Timeout_Usec : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Seal unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Message_Seal";
   end Sd_Bus_Message_Seal;

   -----------------------------
   -- Sd_Bus_Message_Get_Type --
   -----------------------------

   function Sd_Bus_Message_Get_Type
     (M : access Sd_Bus_Message; C_Type : access Unsigned_Char) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Type unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Type";
   end Sd_Bus_Message_Get_Type;

   -------------------------------
   -- Sd_Bus_Message_Get_Cookie --
   -------------------------------

   function Sd_Bus_Message_Get_Cookie
     (M : access Sd_Bus_Message; Cookie : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Cookie unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Cookie";
   end Sd_Bus_Message_Get_Cookie;

   -------------------------------------
   -- Sd_Bus_Message_Get_Reply_Cookie --
   -------------------------------------

   function Sd_Bus_Message_Get_Reply_Cookie
     (M : access Sd_Bus_Message; Cookie : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Reply_Cookie unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Reply_Cookie";
   end Sd_Bus_Message_Get_Reply_Cookie;

   ---------------------------------
   -- Sd_Bus_Message_Get_Priority --
   ---------------------------------

   function Sd_Bus_Message_Get_Priority
     (M : access Sd_Bus_Message; Priority : access Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Priority unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Priority";
   end Sd_Bus_Message_Get_Priority;

   -------------------------------------
   -- Sd_Bus_Message_Get_Expect_Reply --
   -------------------------------------

   function Sd_Bus_Message_Get_Expect_Reply
     (M : access Sd_Bus_Message) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Expect_Reply unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Expect_Reply";
   end Sd_Bus_Message_Get_Expect_Reply;

   -----------------------------------
   -- Sd_Bus_Message_Get_Auto_Start --
   -----------------------------------

   function Sd_Bus_Message_Get_Auto_Start
     (M : access Sd_Bus_Message) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Auto_Start unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Auto_Start";
   end Sd_Bus_Message_Get_Auto_Start;

   --------------------------------------------------------
   -- Sd_Bus_Message_Get_Allow_Interactive_Authorization --
   --------------------------------------------------------

   function Sd_Bus_Message_Get_Allow_Interactive_Authorization
     (M : access Sd_Bus_Message) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True,
         "Sd_Bus_Message_Get_Allow_Interactive_Authorization unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Allow_Interactive_Authorization";
   end Sd_Bus_Message_Get_Allow_Interactive_Authorization;

   ----------------------------------
   -- Sd_Bus_Message_Get_Signature --
   ----------------------------------

   function Sd_Bus_Message_Get_Signature
     (M : access Sd_Bus_Message; Complete : Int) return String
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Signature unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Signature";
   end Sd_Bus_Message_Get_Signature;

   -----------------------------
   -- Sd_Bus_Message_Get_Path --
   -----------------------------

   function Sd_Bus_Message_Get_Path (M : access Sd_Bus_Message) return String
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Path unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Path";
   end Sd_Bus_Message_Get_Path;

   ----------------------------------
   -- Sd_Bus_Message_Get_Interface --
   ----------------------------------

   function Sd_Bus_Message_Get_Interface
     (M : access Sd_Bus_Message) return String
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Interface unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Interface";
   end Sd_Bus_Message_Get_Interface;

   -------------------------------
   -- Sd_Bus_Message_Get_Member --
   -------------------------------

   function Sd_Bus_Message_Get_Member (M : access Sd_Bus_Message) return String
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Member unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Member";
   end Sd_Bus_Message_Get_Member;

   ------------------------------------
   -- Sd_Bus_Message_Get_Destination --
   ------------------------------------

   function Sd_Bus_Message_Get_Destination
     (M : access Sd_Bus_Message) return String
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Destination unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Destination";
   end Sd_Bus_Message_Get_Destination;

   -------------------------------
   -- Sd_Bus_Message_Get_Sender --
   -------------------------------

   function Sd_Bus_Message_Get_Sender (M : access Sd_Bus_Message) return String
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Sender unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Sender";
   end Sd_Bus_Message_Get_Sender;

   ------------------------------
   -- Sd_Bus_Message_Get_Error --
   ------------------------------

   function Sd_Bus_Message_Get_Error
     (M : access Sd_Bus_Message) return access constant Sd_Bus_Error
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Error unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Error";
   end Sd_Bus_Message_Get_Error;

   ------------------------------
   -- Sd_Bus_Message_Get_Errno --
   ------------------------------

   function Sd_Bus_Message_Get_Errno (M : access Sd_Bus_Message) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Errno unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Errno";
   end Sd_Bus_Message_Get_Errno;

   ---------------------------------------
   -- Sd_Bus_Message_Get_Monotonic_Usec --
   ---------------------------------------

   function Sd_Bus_Message_Get_Monotonic_Usec
     (M : access Sd_Bus_Message; Usec : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Monotonic_Usec unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Monotonic_Usec";
   end Sd_Bus_Message_Get_Monotonic_Usec;

   --------------------------------------
   -- Sd_Bus_Message_Get_Realtime_Usec --
   --------------------------------------

   function Sd_Bus_Message_Get_Realtime_Usec
     (M : access Sd_Bus_Message; Usec : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Realtime_Usec unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Realtime_Usec";
   end Sd_Bus_Message_Get_Realtime_Usec;

   -------------------------------
   -- Sd_Bus_Message_Get_Seqnum --
   -------------------------------

   function Sd_Bus_Message_Get_Seqnum
     (M : access Sd_Bus_Message; Seqnum : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Seqnum unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Seqnum";
   end Sd_Bus_Message_Get_Seqnum;

   ----------------------------
   -- Sd_Bus_Message_Get_Bus --
   ----------------------------

   function Sd_Bus_Message_Get_Bus
     (M : access Sd_Bus_Message) return access Sd_Bus
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Bus unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Bus";
   end Sd_Bus_Message_Get_Bus;

   ------------------------------
   -- Sd_Bus_Message_Get_Creds --
   ------------------------------

   function Sd_Bus_Message_Get_Creds
     (M : access Sd_Bus_Message) return access Sd_Bus_Creds
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Get_Creds unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Get_Creds";
   end Sd_Bus_Message_Get_Creds;

   ------------------------------
   -- Sd_Bus_Message_Is_Signal --
   ------------------------------

   function Sd_Bus_Message_Is_Signal
     (M : access Sd_Bus_Message; C_Interface : String; Member : String)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Is_Signal unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Is_Signal";
   end Sd_Bus_Message_Is_Signal;

   -----------------------------------
   -- Sd_Bus_Message_Is_Method_Call --
   -----------------------------------

   function Sd_Bus_Message_Is_Method_Call
     (M : access Sd_Bus_Message; C_Interface : String; Member : String)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Is_Method_Call unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Is_Method_Call";
   end Sd_Bus_Message_Is_Method_Call;

   ------------------------------------
   -- Sd_Bus_Message_Is_Method_Error --
   ------------------------------------

   function Sd_Bus_Message_Is_Method_Error
     (M : access Sd_Bus_Message; Name : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Is_Method_Error unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Is_Method_Error";
   end Sd_Bus_Message_Is_Method_Error;

   -----------------------------
   -- Sd_Bus_Message_Is_Empty --
   -----------------------------

   function Sd_Bus_Message_Is_Empty (M : access Sd_Bus_Message) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Is_Empty unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Is_Empty";
   end Sd_Bus_Message_Is_Empty;

   ----------------------------------
   -- Sd_Bus_Message_Has_Signature --
   ----------------------------------

   function Sd_Bus_Message_Has_Signature
     (M : access Sd_Bus_Message; Signature : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Has_Signature unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Has_Signature";
   end Sd_Bus_Message_Has_Signature;

   -------------------------------------
   -- Sd_Bus_Message_Set_Expect_Reply --
   -------------------------------------

   function Sd_Bus_Message_Set_Expect_Reply
     (M : access Sd_Bus_Message; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Set_Expect_Reply unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Set_Expect_Reply";
   end Sd_Bus_Message_Set_Expect_Reply;

   -----------------------------------
   -- Sd_Bus_Message_Set_Auto_Start --
   -----------------------------------

   function Sd_Bus_Message_Set_Auto_Start
     (M : access Sd_Bus_Message; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Set_Auto_Start unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Set_Auto_Start";
   end Sd_Bus_Message_Set_Auto_Start;

   --------------------------------------------------------
   -- Sd_Bus_Message_Set_Allow_Interactive_Authorization --
   --------------------------------------------------------

   function Sd_Bus_Message_Set_Allow_Interactive_Authorization
     (M : access Sd_Bus_Message; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True,
         "Sd_Bus_Message_Set_Allow_Interactive_Authorization unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Set_Allow_Interactive_Authorization";
   end Sd_Bus_Message_Set_Allow_Interactive_Authorization;

   ------------------------------------
   -- Sd_Bus_Message_Set_Destination --
   ------------------------------------

   function Sd_Bus_Message_Set_Destination
     (M : access Sd_Bus_Message; Destination : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Set_Destination unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Set_Destination";
   end Sd_Bus_Message_Set_Destination;

   -------------------------------
   -- Sd_Bus_Message_Set_Sender --
   -------------------------------

   function Sd_Bus_Message_Set_Sender
     (M : access Sd_Bus_Message; Sender : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Set_Sender unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Set_Sender";
   end Sd_Bus_Message_Set_Sender;

   ---------------------------------
   -- Sd_Bus_Message_Set_Priority --
   ---------------------------------

   function Sd_Bus_Message_Set_Priority
     (M : access Sd_Bus_Message; Priority : Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Set_Priority unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Set_Priority";
   end Sd_Bus_Message_Set_Priority;

   ---------------------------
   -- Sd_Bus_Message_Append --
   ---------------------------

   function Sd_Bus_Message_Append
     (M : access Sd_Bus_Message; Types : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append";
   end Sd_Bus_Message_Append;

   ----------------------------
   -- Sd_Bus_Message_Appendv --
   ----------------------------

   function Sd_Bus_Message_Appendv
     (M : access Sd_Bus_Message; Types : String; Ap : access System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Appendv unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Appendv";
   end Sd_Bus_Message_Appendv;

   ---------------------------------
   -- Sd_Bus_Message_Append_Basic --
   ---------------------------------

   function Sd_Bus_Message_Append_Basic
     (M : access Sd_Bus_Message; C_Type : Char; P : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append_Basic unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append_Basic";
   end Sd_Bus_Message_Append_Basic;

   ---------------------------------
   -- Sd_Bus_Message_Append_Array --
   ---------------------------------

   function Sd_Bus_Message_Append_Array
     (M    : access Sd_Bus_Message; C_Type : Char; Ptr : System.Address;
      Size : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append_Array unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append_Array";
   end Sd_Bus_Message_Append_Array;

   ---------------------------------------
   -- Sd_Bus_Message_Append_Array_Space --
   ---------------------------------------

   function Sd_Bus_Message_Append_Array_Space
     (M   : access Sd_Bus_Message; C_Type : Char; Size : Unsigned_Long;
      Ptr : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append_Array_Space unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append_Array_Space";
   end Sd_Bus_Message_Append_Array_Space;

   ---------------------------------------
   -- Sd_Bus_Message_Append_Array_Iovec --
   ---------------------------------------

   function Sd_Bus_Message_Append_Array_Iovec
     (M   : access Sd_Bus_Message; C_Type : Char;
      Iov : access constant System.Address; N : Unsigned) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append_Array_Iovec unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append_Array_Iovec";
   end Sd_Bus_Message_Append_Array_Iovec;

   ---------------------------------------
   -- Sd_Bus_Message_Append_Array_Memfd --
   ---------------------------------------

   function Sd_Bus_Message_Append_Array_Memfd
     (M      : access Sd_Bus_Message; C_Type : Char; Memfd : Int;
      Offset : Unsigned_Long; Size : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append_Array_Memfd unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append_Array_Memfd";
   end Sd_Bus_Message_Append_Array_Memfd;

   ----------------------------------------
   -- Sd_Bus_Message_Append_String_Space --
   ----------------------------------------

   function Sd_Bus_Message_Append_String_Space
     (M : access Sd_Bus_Message; Size : Unsigned_Long; S : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append_String_Space unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append_String_Space";
   end Sd_Bus_Message_Append_String_Space;

   ----------------------------------------
   -- Sd_Bus_Message_Append_String_Iovec --
   ----------------------------------------

   function Sd_Bus_Message_Append_String_Iovec
     (M : access Sd_Bus_Message; Iov : access constant System.Address;
      N : Unsigned) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append_String_Iovec unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append_String_Iovec";
   end Sd_Bus_Message_Append_String_Iovec;

   ----------------------------------------
   -- Sd_Bus_Message_Append_String_Memfd --
   ----------------------------------------

   function Sd_Bus_Message_Append_String_Memfd
     (M    : access Sd_Bus_Message; Memfd : Int; Offset : Unsigned_Long;
      Size : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append_String_Memfd unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append_String_Memfd";
   end Sd_Bus_Message_Append_String_Memfd;

   --------------------------------
   -- Sd_Bus_Message_Append_Strv --
   --------------------------------

   function Sd_Bus_Message_Append_Strv
     (M : access Sd_Bus_Message; L : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Append_Strv unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Append_Strv";
   end Sd_Bus_Message_Append_Strv;

   -----------------------------------
   -- Sd_Bus_Message_Open_Container --
   -----------------------------------

   function Sd_Bus_Message_Open_Container
     (M : access Sd_Bus_Message; C_Type : Char; Contents : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Open_Container unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Open_Container";
   end Sd_Bus_Message_Open_Container;

   ------------------------------------
   -- Sd_Bus_Message_Close_Container --
   ------------------------------------

   function Sd_Bus_Message_Close_Container
     (M : access Sd_Bus_Message) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Close_Container unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Close_Container";
   end Sd_Bus_Message_Close_Container;

   -------------------------
   -- Sd_Bus_Message_Copy --
   -------------------------

   function Sd_Bus_Message_Copy
     (M : access Sd_Bus_Message; Source : access Sd_Bus_Message; C_All : Int)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Copy unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Message_Copy";
   end Sd_Bus_Message_Copy;

   -------------------------
   -- Sd_Bus_Message_Read --
   -------------------------

   function Sd_Bus_Message_Read
     (M : access Sd_Bus_Message; Types : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Read unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Message_Read";
   end Sd_Bus_Message_Read;

   --------------------------
   -- Sd_Bus_Message_Readv --
   --------------------------

   function Sd_Bus_Message_Readv
     (M : access Sd_Bus_Message; Types : String; Ap : access System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Readv unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Message_Readv";
   end Sd_Bus_Message_Readv;

   -------------------------------
   -- Sd_Bus_Message_Read_Basic --
   -------------------------------

   function Sd_Bus_Message_Read_Basic
     (M : access Sd_Bus_Message; C_Type : Char; P : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Read_Basic unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Read_Basic";
   end Sd_Bus_Message_Read_Basic;

   -------------------------------
   -- Sd_Bus_Message_Read_Array --
   -------------------------------

   function Sd_Bus_Message_Read_Array
     (M    : access Sd_Bus_Message; C_Type : Char; Ptr : System.Address;
      Size : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Read_Array unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Read_Array";
   end Sd_Bus_Message_Read_Array;

   ------------------------------
   -- Sd_Bus_Message_Read_Strv --
   ------------------------------

   function Sd_Bus_Message_Read_Strv
     (M : access Sd_Bus_Message; L : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Read_Strv unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Read_Strv";
   end Sd_Bus_Message_Read_Strv;

   -------------------------
   -- Sd_Bus_Message_Skip --
   -------------------------

   function Sd_Bus_Message_Skip
     (M : access Sd_Bus_Message; Types : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Skip unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Message_Skip";
   end Sd_Bus_Message_Skip;

   ------------------------------------
   -- Sd_Bus_Message_Enter_Container --
   ------------------------------------

   function Sd_Bus_Message_Enter_Container
     (M : access Sd_Bus_Message; C_Type : Char; Contents : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Enter_Container unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Enter_Container";
   end Sd_Bus_Message_Enter_Container;

   -----------------------------------
   -- Sd_Bus_Message_Exit_Container --
   -----------------------------------

   function Sd_Bus_Message_Exit_Container
     (M : access Sd_Bus_Message) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Exit_Container unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Exit_Container";
   end Sd_Bus_Message_Exit_Container;

   ------------------------------
   -- Sd_Bus_Message_Peek_Type --
   ------------------------------

   function Sd_Bus_Message_Peek_Type
     (M : access Sd_Bus_Message; C_Type : String; Contents : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Peek_Type unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Peek_Type";
   end Sd_Bus_Message_Peek_Type;

   --------------------------------
   -- Sd_Bus_Message_Verify_Type --
   --------------------------------

   function Sd_Bus_Message_Verify_Type
     (M : access Sd_Bus_Message; C_Type : Char; Contents : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Verify_Type unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Verify_Type";
   end Sd_Bus_Message_Verify_Type;

   ---------------------------
   -- Sd_Bus_Message_At_End --
   ---------------------------

   function Sd_Bus_Message_At_End
     (M : access Sd_Bus_Message; Complete : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_At_End unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_At_End";
   end Sd_Bus_Message_At_End;

   ---------------------------
   -- Sd_Bus_Message_Rewind --
   ---------------------------

   function Sd_Bus_Message_Rewind
     (M : access Sd_Bus_Message; Complete : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Rewind unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Message_Rewind";
   end Sd_Bus_Message_Rewind;

   ----------------------------
   -- Sd_Bus_Get_Unique_Name --
   ----------------------------

   function Sd_Bus_Get_Unique_Name
     (Bus : access Sd_Bus; Unique : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Unique_Name unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Unique_Name";
   end Sd_Bus_Get_Unique_Name;

   -------------------------
   -- Sd_Bus_Request_Name --
   -------------------------

   function Sd_Bus_Request_Name
     (Bus : access Sd_Bus; Name : String; Flags : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Request_Name unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Request_Name";
   end Sd_Bus_Request_Name;

   -------------------------------
   -- Sd_Bus_Request_Name_Async --
   -------------------------------

   function Sd_Bus_Request_Name_Async
     (Bus      : access Sd_Bus; Ret_Slot : System.Address; Name : String;
      Flags    : Unsigned_Long; Callback : Sd_Bus_Message_Handler_T;
      Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Request_Name_Async unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Request_Name_Async";
   end Sd_Bus_Request_Name_Async;

   -------------------------
   -- Sd_Bus_Release_Name --
   -------------------------

   function Sd_Bus_Release_Name (Bus : access Sd_Bus; Name : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Release_Name unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Release_Name";
   end Sd_Bus_Release_Name;

   -------------------------------
   -- Sd_Bus_Release_Name_Async --
   -------------------------------

   function Sd_Bus_Release_Name_Async
     (Bus      : access Sd_Bus; Ret_Slot : System.Address; Name : String;
      Callback : Sd_Bus_Message_Handler_T; Userdata : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Release_Name_Async unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Release_Name_Async";
   end Sd_Bus_Release_Name_Async;

   -----------------------
   -- Sd_Bus_List_Names --
   -----------------------

   function Sd_Bus_List_Names
     (Bus         : access Sd_Bus; Acquired : System.Address;
      Activatable : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_List_Names unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_List_Names";
   end Sd_Bus_List_Names;

   ---------------------------
   -- Sd_Bus_Get_Name_Creds --
   ---------------------------

   function Sd_Bus_Get_Name_Creds
     (Bus   : access Sd_Bus; Name : String; Mask : Unsigned_Long;
      Creds : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Name_Creds unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Name_Creds";
   end Sd_Bus_Get_Name_Creds;

   --------------------------------
   -- Sd_Bus_Get_Name_Machine_Id --
   --------------------------------

   function Sd_Bus_Get_Name_Machine_Id
     (Bus : access Sd_Bus; Name : String; Machine : Systemd.Id128.Id128_T)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Name_Machine_Id unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Name_Machine_Id";
   end Sd_Bus_Get_Name_Machine_Id;

   ------------------------
   -- Sd_Bus_Call_Method --
   ------------------------

   function Sd_Bus_Call_Method
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Sd_Bus_Error;
      Reply       : System.Address; Types : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Call_Method unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Call_Method";
   end Sd_Bus_Call_Method;

   ------------------------------
   -- Sd_Bus_Call_Method_Async --
   ------------------------------

   function Sd_Bus_Call_Method_Async
     (Bus      : access Sd_Bus; Slot : System.Address; Destination : String;
      Path     : String; C_Interface : String; Member : String;
      Callback : Sd_Bus_Message_Handler_T; Userdata : System.Address;
      Types    : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Call_Method_Async unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Call_Method_Async";
   end Sd_Bus_Call_Method_Async;

   -------------------------
   -- Sd_Bus_Get_Property --
   -------------------------

   function Sd_Bus_Get_Property
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Sd_Bus_Error;
      Reply       : System.Address; C_Type : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Property unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Get_Property";
   end Sd_Bus_Get_Property;

   ---------------------------------
   -- Sd_Bus_Get_Property_Trivial --
   ---------------------------------

   function Sd_Bus_Get_Property_Trivial
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Sd_Bus_Error;
      C_Type      : Char; Ret_Ptr : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Property_Trivial unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Property_Trivial";
   end Sd_Bus_Get_Property_Trivial;

   --------------------------------
   -- Sd_Bus_Get_Property_String --
   --------------------------------

   function Sd_Bus_Get_Property_String
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Sd_Bus_Error;
      Ret         : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Property_String unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Property_String";
   end Sd_Bus_Get_Property_String;

   ------------------------------
   -- Sd_Bus_Get_Property_Strv --
   ------------------------------

   function Sd_Bus_Get_Property_Strv
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Sd_Bus_Error;
      Ret         : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Get_Property_Strv unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Get_Property_Strv";
   end Sd_Bus_Get_Property_Strv;

   -------------------------
   -- Sd_Bus_Set_Property --
   -------------------------

   function Sd_Bus_Set_Property
     (Bus         : access Sd_Bus; Destination : String; Path : String;
      C_Interface : String; Member : String; Ret_Error : access Sd_Bus_Error;
      C_Type      : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Set_Property unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Set_Property";
   end Sd_Bus_Set_Property;

   --------------------------------
   -- Sd_Bus_Reply_Method_Return --
   --------------------------------

   function Sd_Bus_Reply_Method_Return
     (Call : access Sd_Bus_Message; Types : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Reply_Method_Return unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Reply_Method_Return";
   end Sd_Bus_Reply_Method_Return;

   -------------------------------
   -- Sd_Bus_Reply_Method_Error --
   -------------------------------

   function Sd_Bus_Reply_Method_Error
     (Call : access Sd_Bus_Message; E : access constant Sd_Bus_Error)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Reply_Method_Error unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Reply_Method_Error";
   end Sd_Bus_Reply_Method_Error;

   --------------------------------
   -- Sd_Bus_Reply_Method_Errorf --
   --------------------------------

   function Sd_Bus_Reply_Method_Errorf
     (Call : access Sd_Bus_Message; Name : String; Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Reply_Method_Errorf unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Reply_Method_Errorf";
   end Sd_Bus_Reply_Method_Errorf;

   -------------------------------
   -- Sd_Bus_Reply_Method_Errno --
   -------------------------------

   function Sd_Bus_Reply_Method_Errno
     (Call : access Sd_Bus_Message; Error : Int;
      E    : access constant Sd_Bus_Error) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Reply_Method_Errno unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Reply_Method_Errno";
   end Sd_Bus_Reply_Method_Errno;

   --------------------------------
   -- Sd_Bus_Reply_Method_Errnof --
   --------------------------------

   function Sd_Bus_Reply_Method_Errnof
     (Call : access Sd_Bus_Message; Error : Int; Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Reply_Method_Errnof unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Reply_Method_Errnof";
   end Sd_Bus_Reply_Method_Errnof;

   ------------------------
   -- Sd_Bus_Emit_Signal --
   ------------------------

   function Sd_Bus_Emit_Signal
     (Bus    : access Sd_Bus; Path : String; C_Interface : String;
      Member : String; Types : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Emit_Signal unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Emit_Signal";
   end Sd_Bus_Emit_Signal;

   -----------------------------------------
   -- Sd_Bus_Emit_Properties_Changed_Strv --
   -----------------------------------------

   function Sd_Bus_Emit_Properties_Changed_Strv
     (Bus   : access Sd_Bus; Path : String; C_Interface : String;
      Names : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Emit_Properties_Changed_Strv unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Emit_Properties_Changed_Strv";
   end Sd_Bus_Emit_Properties_Changed_Strv;

   ------------------------------------
   -- Sd_Bus_Emit_Properties_Changed --
   ------------------------------------

   function Sd_Bus_Emit_Properties_Changed
     (Bus : access Sd_Bus; Path : String; C_Interface : String; Name : String)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Emit_Properties_Changed unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Emit_Properties_Changed";
   end Sd_Bus_Emit_Properties_Changed;

   ------------------------------
   -- Sd_Bus_Emit_Object_Added --
   ------------------------------

   function Sd_Bus_Emit_Object_Added
     (Bus : access Sd_Bus; Path : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Emit_Object_Added unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Emit_Object_Added";
   end Sd_Bus_Emit_Object_Added;

   --------------------------------
   -- Sd_Bus_Emit_Object_Removed --
   --------------------------------

   function Sd_Bus_Emit_Object_Removed
     (Bus : access Sd_Bus; Path : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Emit_Object_Removed unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Emit_Object_Removed";
   end Sd_Bus_Emit_Object_Removed;

   ---------------------------------------
   -- Sd_Bus_Emit_Interfaces_Added_Strv --
   ---------------------------------------

   function Sd_Bus_Emit_Interfaces_Added_Strv
     (Bus : access Sd_Bus; Path : String; Interfaces : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Emit_Interfaces_Added_Strv unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Emit_Interfaces_Added_Strv";
   end Sd_Bus_Emit_Interfaces_Added_Strv;

   ----------------------------------
   -- Sd_Bus_Emit_Interfaces_Added --
   ----------------------------------

   function Sd_Bus_Emit_Interfaces_Added
     (Bus : access Sd_Bus; Path : String; C_Interface : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Emit_Interfaces_Added unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Emit_Interfaces_Added";
   end Sd_Bus_Emit_Interfaces_Added;

   -----------------------------------------
   -- Sd_Bus_Emit_Interfaces_Removed_Strv --
   -----------------------------------------

   function Sd_Bus_Emit_Interfaces_Removed_Strv
     (Bus : access Sd_Bus; Path : String; Interfaces : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Emit_Interfaces_Removed_Strv unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Emit_Interfaces_Removed_Strv";
   end Sd_Bus_Emit_Interfaces_Removed_Strv;

   ------------------------------------
   -- Sd_Bus_Emit_Interfaces_Removed --
   ------------------------------------

   function Sd_Bus_Emit_Interfaces_Removed
     (Bus : access Sd_Bus; Path : String; C_Interface : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Emit_Interfaces_Removed unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Emit_Interfaces_Removed";
   end Sd_Bus_Emit_Interfaces_Removed;

   -------------------------------
   -- Sd_Bus_Query_Sender_Creds --
   -------------------------------

   function Sd_Bus_Query_Sender_Creds
     (Call  : access Sd_Bus_Message; Mask : Unsigned_Long;
      Creds : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Query_Sender_Creds unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Query_Sender_Creds";
   end Sd_Bus_Query_Sender_Creds;

   -----------------------------------
   -- Sd_Bus_Query_Sender_Privilege --
   -----------------------------------

   function Sd_Bus_Query_Sender_Privilege
     (Call : access Sd_Bus_Message; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Query_Sender_Privilege unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Query_Sender_Privilege";
   end Sd_Bus_Query_Sender_Privilege;

   -------------------------
   -- Sd_Bus_Match_Signal --
   -------------------------

   function Sd_Bus_Match_Signal
     (Bus      : access Sd_Bus; Ret : System.Address; Sender : String;
      Path     : String; C_Interface : String; Member : String;
      Callback : Sd_Bus_Message_Handler_T; Userdata : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Match_Signal unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Match_Signal";
   end Sd_Bus_Match_Signal;

   -------------------------------
   -- Sd_Bus_Match_Signal_Async --
   -------------------------------

   function Sd_Bus_Match_Signal_Async
     (Bus            : access Sd_Bus; Ret : System.Address; Sender : String;
      Path           : String; C_Interface : String; Member : String;
      Match_Callback : Sd_Bus_Message_Handler_T;
      Add_Callback   : Sd_Bus_Message_Handler_T; Userdata : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Match_Signal_Async unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Match_Signal_Async";
   end Sd_Bus_Match_Signal_Async;

   -------------------------------
   -- Sd_Bus_Creds_New_From_Pid --
   -------------------------------

   function Sd_Bus_Creds_New_From_Pid
     (Ret : System.Address; Pid : Int; Creds_Mask : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_New_From_Pid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_New_From_Pid";
   end Sd_Bus_Creds_New_From_Pid;

   ----------------------
   -- Sd_Bus_Creds_Ref --
   ----------------------

   function Sd_Bus_Creds_Ref
     (C : access Sd_Bus_Creds) return access Sd_Bus_Creds
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Ref unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Creds_Ref";
   end Sd_Bus_Creds_Ref;

   ------------------------
   -- Sd_Bus_Creds_Unref --
   ------------------------

   function Sd_Bus_Creds_Unref
     (C : access Sd_Bus_Creds) return access Sd_Bus_Creds
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Unref unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Creds_Unref";
   end Sd_Bus_Creds_Unref;

   ---------------------------
   -- Sd_Bus_Creds_Get_Mask --
   ---------------------------

   function Sd_Bus_Creds_Get_Mask
     (C : access constant Sd_Bus_Creds) return Unsigned_Long
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Mask unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Mask";
   end Sd_Bus_Creds_Get_Mask;

   -------------------------------------
   -- Sd_Bus_Creds_Get_Augmented_Mask --
   -------------------------------------

   function Sd_Bus_Creds_Get_Augmented_Mask
     (C : access constant Sd_Bus_Creds) return Unsigned_Long
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Augmented_Mask unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Augmented_Mask";
   end Sd_Bus_Creds_Get_Augmented_Mask;

   --------------------------
   -- Sd_Bus_Creds_Get_Pid --
   --------------------------

   function Sd_Bus_Creds_Get_Pid
     (C : access Sd_Bus_Creds; Pid : access Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Pid unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Creds_Get_Pid";
   end Sd_Bus_Creds_Get_Pid;

   ---------------------------
   -- Sd_Bus_Creds_Get_Ppid --
   ---------------------------

   function Sd_Bus_Creds_Get_Ppid
     (C : access Sd_Bus_Creds; Ppid : access Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Ppid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Ppid";
   end Sd_Bus_Creds_Get_Ppid;

   --------------------------
   -- Sd_Bus_Creds_Get_Tid --
   --------------------------

   function Sd_Bus_Creds_Get_Tid
     (C : access Sd_Bus_Creds; Tid : access Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Tid unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Creds_Get_Tid";
   end Sd_Bus_Creds_Get_Tid;

   --------------------------
   -- Sd_Bus_Creds_Get_Uid --
   --------------------------

   function Sd_Bus_Creds_Get_Uid
     (C : access Sd_Bus_Creds; Uid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Uid unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Creds_Get_Uid";
   end Sd_Bus_Creds_Get_Uid;

   ---------------------------
   -- Sd_Bus_Creds_Get_Euid --
   ---------------------------

   function Sd_Bus_Creds_Get_Euid
     (C : access Sd_Bus_Creds; Euid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Euid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Euid";
   end Sd_Bus_Creds_Get_Euid;

   ---------------------------
   -- Sd_Bus_Creds_Get_Suid --
   ---------------------------

   function Sd_Bus_Creds_Get_Suid
     (C : access Sd_Bus_Creds; Suid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Suid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Suid";
   end Sd_Bus_Creds_Get_Suid;

   ----------------------------
   -- Sd_Bus_Creds_Get_Fsuid --
   ----------------------------

   function Sd_Bus_Creds_Get_Fsuid
     (C : access Sd_Bus_Creds; Fsuid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Fsuid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Fsuid";
   end Sd_Bus_Creds_Get_Fsuid;

   --------------------------
   -- Sd_Bus_Creds_Get_Gid --
   --------------------------

   function Sd_Bus_Creds_Get_Gid
     (C : access Sd_Bus_Creds; Gid : access Gid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Gid unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Creds_Get_Gid";
   end Sd_Bus_Creds_Get_Gid;

   ---------------------------
   -- Sd_Bus_Creds_Get_Egid --
   ---------------------------

   function Sd_Bus_Creds_Get_Egid
     (C : access Sd_Bus_Creds; Egid : access Gid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Egid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Egid";
   end Sd_Bus_Creds_Get_Egid;

   ---------------------------
   -- Sd_Bus_Creds_Get_Sgid --
   ---------------------------

   function Sd_Bus_Creds_Get_Sgid
     (C : access Sd_Bus_Creds; Sgid : access Gid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Sgid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Sgid";
   end Sd_Bus_Creds_Get_Sgid;

   ----------------------------
   -- Sd_Bus_Creds_Get_Fsgid --
   ----------------------------

   function Sd_Bus_Creds_Get_Fsgid
     (C : access Sd_Bus_Creds; Fsgid : access Gid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Fsgid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Fsgid";
   end Sd_Bus_Creds_Get_Fsgid;

   -----------------------------------------
   -- Sd_Bus_Creds_Get_Supplementary_Gids --
   -----------------------------------------

   function Sd_Bus_Creds_Get_Supplementary_Gids
     (C : access Sd_Bus_Creds; Gids : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Supplementary_Gids unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Supplementary_Gids";
   end Sd_Bus_Creds_Get_Supplementary_Gids;

   ---------------------------
   -- Sd_Bus_Creds_Get_Comm --
   ---------------------------

   function Sd_Bus_Creds_Get_Comm
     (C : access Sd_Bus_Creds; Comm : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Comm unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Comm";
   end Sd_Bus_Creds_Get_Comm;

   -------------------------------
   -- Sd_Bus_Creds_Get_Tid_Comm --
   -------------------------------

   function Sd_Bus_Creds_Get_Tid_Comm
     (C : access Sd_Bus_Creds; Comm : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Tid_Comm unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Tid_Comm";
   end Sd_Bus_Creds_Get_Tid_Comm;

   --------------------------
   -- Sd_Bus_Creds_Get_Exe --
   --------------------------

   function Sd_Bus_Creds_Get_Exe
     (C : access Sd_Bus_Creds; Exe : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Exe unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Creds_Get_Exe";
   end Sd_Bus_Creds_Get_Exe;

   ------------------------------
   -- Sd_Bus_Creds_Get_Cmdline --
   ------------------------------

   function Sd_Bus_Creds_Get_Cmdline
     (C : access Sd_Bus_Creds; Cmdline : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Cmdline unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Cmdline";
   end Sd_Bus_Creds_Get_Cmdline;

   -----------------------------
   -- Sd_Bus_Creds_Get_Cgroup --
   -----------------------------

   function Sd_Bus_Creds_Get_Cgroup
     (C : access Sd_Bus_Creds; Cgroup : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Cgroup unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Cgroup";
   end Sd_Bus_Creds_Get_Cgroup;

   ---------------------------
   -- Sd_Bus_Creds_Get_Unit --
   ---------------------------

   function Sd_Bus_Creds_Get_Unit
     (C : access Sd_Bus_Creds; Unit : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Unit unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Unit";
   end Sd_Bus_Creds_Get_Unit;

   ----------------------------
   -- Sd_Bus_Creds_Get_Slice --
   ----------------------------

   function Sd_Bus_Creds_Get_Slice
     (C : access Sd_Bus_Creds; Slice : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Slice unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Slice";
   end Sd_Bus_Creds_Get_Slice;

   --------------------------------
   -- Sd_Bus_Creds_Get_User_Unit --
   --------------------------------

   function Sd_Bus_Creds_Get_User_Unit
     (C : access Sd_Bus_Creds; Unit : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_User_Unit unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_User_Unit";
   end Sd_Bus_Creds_Get_User_Unit;

   ---------------------------------
   -- Sd_Bus_Creds_Get_User_Slice --
   ---------------------------------

   function Sd_Bus_Creds_Get_User_Slice
     (C : access Sd_Bus_Creds; Slice : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_User_Slice unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_User_Slice";
   end Sd_Bus_Creds_Get_User_Slice;

   ------------------------------
   -- Sd_Bus_Creds_Get_Session --
   ------------------------------

   function Sd_Bus_Creds_Get_Session
     (C : access Sd_Bus_Creds; Session : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Session unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Session";
   end Sd_Bus_Creds_Get_Session;

   --------------------------------
   -- Sd_Bus_Creds_Get_Owner_Uid --
   --------------------------------

   function Sd_Bus_Creds_Get_Owner_Uid
     (C : access Sd_Bus_Creds; Uid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Owner_Uid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Owner_Uid";
   end Sd_Bus_Creds_Get_Owner_Uid;

   ------------------------------------
   -- Sd_Bus_Creds_Has_Effective_Cap --
   ------------------------------------

   function Sd_Bus_Creds_Has_Effective_Cap
     (C : access Sd_Bus_Creds; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Has_Effective_Cap unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Has_Effective_Cap";
   end Sd_Bus_Creds_Has_Effective_Cap;

   ------------------------------------
   -- Sd_Bus_Creds_Has_Permitted_Cap --
   ------------------------------------

   function Sd_Bus_Creds_Has_Permitted_Cap
     (C : access Sd_Bus_Creds; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Has_Permitted_Cap unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Has_Permitted_Cap";
   end Sd_Bus_Creds_Has_Permitted_Cap;

   --------------------------------------
   -- Sd_Bus_Creds_Has_Inheritable_Cap --
   --------------------------------------

   function Sd_Bus_Creds_Has_Inheritable_Cap
     (C : access Sd_Bus_Creds; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Has_Inheritable_Cap unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Has_Inheritable_Cap";
   end Sd_Bus_Creds_Has_Inheritable_Cap;

   -----------------------------------
   -- Sd_Bus_Creds_Has_Bounding_Cap --
   -----------------------------------

   function Sd_Bus_Creds_Has_Bounding_Cap
     (C : access Sd_Bus_Creds; Capability : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Has_Bounding_Cap unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Has_Bounding_Cap";
   end Sd_Bus_Creds_Has_Bounding_Cap;

   --------------------------------------
   -- Sd_Bus_Creds_Get_Selinux_Context --
   --------------------------------------

   function Sd_Bus_Creds_Get_Selinux_Context
     (C : access Sd_Bus_Creds; Context : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Selinux_Context unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Selinux_Context";
   end Sd_Bus_Creds_Get_Selinux_Context;

   ---------------------------------------
   -- Sd_Bus_Creds_Get_Audit_Session_Id --
   ---------------------------------------

   function Sd_Bus_Creds_Get_Audit_Session_Id
     (C : access Sd_Bus_Creds; Sessionid : access Unsigned) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Audit_Session_Id unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Audit_Session_Id";
   end Sd_Bus_Creds_Get_Audit_Session_Id;

   --------------------------------------
   -- Sd_Bus_Creds_Get_Audit_Login_Uid --
   --------------------------------------

   function Sd_Bus_Creds_Get_Audit_Login_Uid
     (C : access Sd_Bus_Creds; Loginuid : access Uid_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Audit_Login_Uid unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Audit_Login_Uid";
   end Sd_Bus_Creds_Get_Audit_Login_Uid;

   --------------------------
   -- Sd_Bus_Creds_Get_Tty --
   --------------------------

   function Sd_Bus_Creds_Get_Tty
     (C : access Sd_Bus_Creds; Tty : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Tty unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Creds_Get_Tty";
   end Sd_Bus_Creds_Get_Tty;

   ----------------------------------
   -- Sd_Bus_Creds_Get_Unique_Name --
   ----------------------------------

   function Sd_Bus_Creds_Get_Unique_Name
     (C : access Sd_Bus_Creds; Name : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Unique_Name unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Unique_Name";
   end Sd_Bus_Creds_Get_Unique_Name;

   ---------------------------------------
   -- Sd_Bus_Creds_Get_Well_Known_Names --
   ---------------------------------------

   function Sd_Bus_Creds_Get_Well_Known_Names
     (C : access Sd_Bus_Creds; Names : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Well_Known_Names unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Well_Known_Names";
   end Sd_Bus_Creds_Get_Well_Known_Names;

   ----------------------------------
   -- Sd_Bus_Creds_Get_Description --
   ----------------------------------

   function Sd_Bus_Creds_Get_Description
     (C : access Sd_Bus_Creds; Name : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Get_Description unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Creds_Get_Description";
   end Sd_Bus_Creds_Get_Description;

   -----------------------
   -- Sd_Bus_Error_Free --
   -----------------------

   procedure Sd_Bus_Error_Free (E : access Sd_Bus_Error) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Free unimplemented");
      raise Program_Error with "Unimplemented procedure Sd_Bus_Error_Free";
   end Sd_Bus_Error_Free;

   ----------------------
   -- Sd_Bus_Error_Set --
   ----------------------

   function Sd_Bus_Error_Set
     (E : access Sd_Bus_Error; Name : String; Message : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Set unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Error_Set";
   end Sd_Bus_Error_Set;

   -----------------------
   -- Sd_Bus_Error_Setf --
   -----------------------

   function Sd_Bus_Error_Setf
     (E : access Sd_Bus_Error; Name : String; Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Setf unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Error_Setf";
   end Sd_Bus_Error_Setf;

   ----------------------------
   -- Sd_Bus_Error_Set_Const --
   ----------------------------

   function Sd_Bus_Error_Set_Const
     (E : access Sd_Bus_Error; Name : String; Message : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Set_Const unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Error_Set_Const";
   end Sd_Bus_Error_Set_Const;

   ----------------------------
   -- Sd_Bus_Error_Set_Errno --
   ----------------------------

   function Sd_Bus_Error_Set_Errno
     (E : access Sd_Bus_Error; Error : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Set_Errno unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Error_Set_Errno";
   end Sd_Bus_Error_Set_Errno;

   -----------------------------
   -- Sd_Bus_Error_Set_Errnof --
   -----------------------------

   function Sd_Bus_Error_Set_Errnof
     (E : access Sd_Bus_Error; Error : Int; Format : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Set_Errnof unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Error_Set_Errnof";
   end Sd_Bus_Error_Set_Errnof;

   ------------------------------
   -- Sd_Bus_Error_Set_Errnofv --
   ------------------------------

   function Sd_Bus_Error_Set_Errnofv
     (E  : access Sd_Bus_Error; Error : Int; Format : String;
      Ap : access System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Set_Errnofv unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Error_Set_Errnofv";
   end Sd_Bus_Error_Set_Errnofv;

   ----------------------------
   -- Sd_Bus_Error_Get_Errno --
   ----------------------------

   function Sd_Bus_Error_Get_Errno
     (E : access constant Sd_Bus_Error) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Get_Errno unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Error_Get_Errno";
   end Sd_Bus_Error_Get_Errno;

   -----------------------
   -- Sd_Bus_Error_Copy --
   -----------------------

   function Sd_Bus_Error_Copy
     (Dest : access Sd_Bus_Error; E : access constant Sd_Bus_Error) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Copy unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Error_Copy";
   end Sd_Bus_Error_Copy;

   -----------------------
   -- Sd_Bus_Error_Move --
   -----------------------

   function Sd_Bus_Error_Move
     (Dest : access Sd_Bus_Error; E : access Sd_Bus_Error) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Move unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Error_Move";
   end Sd_Bus_Error_Move;

   -------------------------
   -- Sd_Bus_Error_Is_Set --
   -------------------------

   function Sd_Bus_Error_Is_Set (E : access constant Sd_Bus_Error) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Is_Set unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Error_Is_Set";
   end Sd_Bus_Error_Is_Set;

   ---------------------------
   -- Sd_Bus_Error_Has_Name --
   ---------------------------

   function Sd_Bus_Error_Has_Name
     (E : access constant Sd_Bus_Error; Name : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Has_Name unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Error_Has_Name";
   end Sd_Bus_Error_Has_Name;

   --------------------------
   -- Sd_Bus_Error_Add_Map --
   --------------------------

   function Sd_Bus_Error_Add_Map
     (Map : access constant Sd_Bus_Error_Map) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Error_Add_Map unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Error_Add_Map";
   end Sd_Bus_Error_Add_Map;

   ------------------------
   -- Sd_Bus_Path_Encode --
   ------------------------

   function Sd_Bus_Path_Encode
     (Prefix : String; External_Id : String; Ret_Path : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Path_Encode unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Path_Encode";
   end Sd_Bus_Path_Encode;

   -----------------------------
   -- Sd_Bus_Path_Encode_Many --
   -----------------------------

   function Sd_Bus_Path_Encode_Many
     (C_Out : System.Address; Path_Template : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Path_Encode_Many unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Path_Encode_Many";
   end Sd_Bus_Path_Encode_Many;

   ------------------------
   -- Sd_Bus_Path_Decode --
   ------------------------

   function Sd_Bus_Path_Decode
     (Path : String; Prefix : String; Ret_External_Id : System.Address)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Path_Decode unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Path_Decode";
   end Sd_Bus_Path_Decode;

   -----------------------------
   -- Sd_Bus_Path_Decode_Many --
   -----------------------------

   function Sd_Bus_Path_Decode_Many
     (Path : String; Path_Template : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Path_Decode_Many unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Path_Decode_Many";
   end Sd_Bus_Path_Decode_Many;

   ----------------------
   -- Sd_Bus_Track_New --
   ----------------------

   function Sd_Bus_Track_New
     (Bus     : access Sd_Bus; Track : System.Address;
      Handler : Sd_Bus_Track_Handler_T; Userdata : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_New unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Track_New";
   end Sd_Bus_Track_New;

   ----------------------
   -- Sd_Bus_Track_Ref --
   ----------------------

   function Sd_Bus_Track_Ref
     (Track : access Sd_Bus_Track) return access Sd_Bus_Track
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Ref unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Track_Ref";
   end Sd_Bus_Track_Ref;

   ------------------------
   -- Sd_Bus_Track_Unref --
   ------------------------

   function Sd_Bus_Track_Unref
     (Track : access Sd_Bus_Track) return access Sd_Bus_Track
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Unref unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Track_Unref";
   end Sd_Bus_Track_Unref;

   --------------------------
   -- Sd_Bus_Track_Get_Bus --
   --------------------------

   function Sd_Bus_Track_Get_Bus
     (Track : access Sd_Bus_Track) return access Sd_Bus
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Get_Bus unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Track_Get_Bus";
   end Sd_Bus_Track_Get_Bus;

   -------------------------------
   -- Sd_Bus_Track_Get_Userdata --
   -------------------------------

   function Sd_Bus_Track_Get_Userdata
     (Track : access Sd_Bus_Track) return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Get_Userdata unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Get_Userdata";
   end Sd_Bus_Track_Get_Userdata;

   -------------------------------
   -- Sd_Bus_Track_Set_Userdata --
   -------------------------------

   function Sd_Bus_Track_Set_Userdata
     (Track : access Sd_Bus_Track; Userdata : System.Address)
      return System.Address
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Set_Userdata unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Set_Userdata";
   end Sd_Bus_Track_Set_Userdata;

   -----------------------------
   -- Sd_Bus_Track_Add_Sender --
   -----------------------------

   function Sd_Bus_Track_Add_Sender
     (Track : access Sd_Bus_Track; M : access Sd_Bus_Message) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Add_Sender unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Add_Sender";
   end Sd_Bus_Track_Add_Sender;

   --------------------------------
   -- Sd_Bus_Track_Remove_Sender --
   --------------------------------

   function Sd_Bus_Track_Remove_Sender
     (Track : access Sd_Bus_Track; M : access Sd_Bus_Message) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Remove_Sender unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Remove_Sender";
   end Sd_Bus_Track_Remove_Sender;

   ---------------------------
   -- Sd_Bus_Track_Add_Name --
   ---------------------------

   function Sd_Bus_Track_Add_Name
     (Track : access Sd_Bus_Track; Name : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Add_Name unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Add_Name";
   end Sd_Bus_Track_Add_Name;

   ------------------------------
   -- Sd_Bus_Track_Remove_Name --
   ------------------------------

   function Sd_Bus_Track_Remove_Name
     (Track : access Sd_Bus_Track; Name : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Remove_Name unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Remove_Name";
   end Sd_Bus_Track_Remove_Name;

   --------------------------------
   -- Sd_Bus_Track_Set_Recursive --
   --------------------------------

   function Sd_Bus_Track_Set_Recursive
     (Track : access Sd_Bus_Track; B : Int) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Set_Recursive unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Set_Recursive";
   end Sd_Bus_Track_Set_Recursive;

   --------------------------------
   -- Sd_Bus_Track_Get_Recursive --
   --------------------------------

   function Sd_Bus_Track_Get_Recursive (Track : access Sd_Bus_Track) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Get_Recursive unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Get_Recursive";
   end Sd_Bus_Track_Get_Recursive;

   ------------------------
   -- Sd_Bus_Track_Count --
   ------------------------

   function Sd_Bus_Track_Count (Track : access Sd_Bus_Track) return Unsigned is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Count unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Track_Count";
   end Sd_Bus_Track_Count;

   -------------------------------
   -- Sd_Bus_Track_Count_Sender --
   -------------------------------

   function Sd_Bus_Track_Count_Sender
     (Track : access Sd_Bus_Track; M : access Sd_Bus_Message) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Count_Sender unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Count_Sender";
   end Sd_Bus_Track_Count_Sender;

   -----------------------------
   -- Sd_Bus_Track_Count_Name --
   -----------------------------

   function Sd_Bus_Track_Count_Name
     (Track : access Sd_Bus_Track; Name : String) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Count_Name unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Count_Name";
   end Sd_Bus_Track_Count_Name;

   ---------------------------
   -- Sd_Bus_Track_Contains --
   ---------------------------

   function Sd_Bus_Track_Contains
     (Track : access Sd_Bus_Track; Name : String) return String
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Contains unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Contains";
   end Sd_Bus_Track_Contains;

   ------------------------
   -- Sd_Bus_Track_First --
   ------------------------

   function Sd_Bus_Track_First (Track : access Sd_Bus_Track) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_First unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Track_First";
   end Sd_Bus_Track_First;

   -----------------------
   -- Sd_Bus_Track_Next --
   -----------------------

   function Sd_Bus_Track_Next (Track : access Sd_Bus_Track) return String is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Next unimplemented");
      return
        raise Program_Error with "Unimplemented function Sd_Bus_Track_Next";
   end Sd_Bus_Track_Next;

   ---------------------------------------
   -- Sd_Bus_Track_Set_Destroy_Callback --
   ---------------------------------------

   function Sd_Bus_Track_Set_Destroy_Callback
     (S : access Sd_Bus_Track; Callback : Sd_Bus_Destroy_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Set_Destroy_Callback unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Set_Destroy_Callback";
   end Sd_Bus_Track_Set_Destroy_Callback;

   ---------------------------------------
   -- Sd_Bus_Track_Get_Destroy_Callback --
   ---------------------------------------

   function Sd_Bus_Track_Get_Destroy_Callback
     (S : access Sd_Bus_Track; Ret : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Get_Destroy_Callback unimplemented");
      return
        raise Program_Error
          with "Unimplemented function Sd_Bus_Track_Get_Destroy_Callback";
   end Sd_Bus_Track_Get_Destroy_Callback;

   -------------------
   -- Sd_Bus_Unrefp --
   -------------------

   procedure Sd_Bus_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Sd_Bus_Unrefp";
   end Sd_Bus_Unrefp;

   -------------------------
   -- Sd_Bus_Close_Unrefp --
   -------------------------

   procedure Sd_Bus_Close_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Close_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Sd_Bus_Close_Unrefp";
   end Sd_Bus_Close_Unrefp;

   -------------------------------
   -- Sd_Bus_Flush_Close_Unrefp --
   -------------------------------

   procedure Sd_Bus_Flush_Close_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Flush_Close_Unrefp unimplemented");
      raise Program_Error
        with "Unimplemented procedure Sd_Bus_Flush_Close_Unrefp";
   end Sd_Bus_Flush_Close_Unrefp;

   ------------------------
   -- Sd_Bus_Slot_Unrefp --
   ------------------------

   procedure Sd_Bus_Slot_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Slot_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Sd_Bus_Slot_Unrefp";
   end Sd_Bus_Slot_Unrefp;

   ---------------------------
   -- Sd_Bus_Message_Unrefp --
   ---------------------------

   procedure Sd_Bus_Message_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Message_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Sd_Bus_Message_Unrefp";
   end Sd_Bus_Message_Unrefp;

   -------------------------
   -- Sd_Bus_Creds_Unrefp --
   -------------------------

   procedure Sd_Bus_Creds_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Creds_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Sd_Bus_Creds_Unrefp";
   end Sd_Bus_Creds_Unrefp;

   -------------------------
   -- Sd_Bus_Track_Unrefp --
   -------------------------

   procedure Sd_Bus_Track_Unrefp (P : System.Address) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Sd_Bus_Track_Unrefp unimplemented");
      raise Program_Error with "Unimplemented procedure Sd_Bus_Track_Unrefp";
   end Sd_Bus_Track_Unrefp;

end Systemd.Bus;
