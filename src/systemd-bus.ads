pragma Ada_2012;

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with GNAT.OS_Lib;
with Systemd.Event;
with Systemd.Id128;

private with Ada.Finalization;
limited with Systemd.Bus.Vtable;
private with Systemd.Low_Level.Systemd_Sd_Bus_H;

package Systemd.Bus is

   type Uid_T is new Integer;
   type GId_T is new Integer;
   --  unsupported macro: DEFAULT ((sd_bus *) 1)
   --  unsupported macro: DEFAULT_USER ((sd_bus *) 2)
   --  unsupported macro: DEFAULT_SYSTEM ((sd_bus *) 3)
   --  arg-macro: function ERROR_MAKE_CONST (name, message)
   --    return (const error) {(name), (message), 0};
   --  unsupported macro: ERROR_NULL ERROR_MAKE_CONST(NULL, NULL)
   --  arg-macro: procedure ERROR_MAP (_name, _code)
   --    { .name := _name, .code := _code, }
   --  unsupported macro: ERROR_MAP_END { .name = NULL, .code = - 'x', }
   --  arg-macro: procedure MESSAGE_APPEND_ID128 (x)
   --    16, (x).bytes(0), (x).bytes(1), (x).bytes(2), (x).bytes(3), (x).bytes(4), (x).bytes(5), (x).bytes(6), (x).bytes(7), (x).bytes(8), (x).bytes(9), (x).bytes(10), (x).bytes(11), (x).bytes(12), (x).bytes(13), (x).bytes(14), (x).bytes(15)
   --  arg-macro: procedure MESSAGE_READ_ID128 (x)
   --    16, and(x).bytes(0), and(x).bytes(1), and(x).bytes(2), and(x).bytes(3), and(x).bytes(4), and(x).bytes(5), and(x).bytes(6), and(x).bytes(7), and(x).bytes(8), and(x).bytes(9), and(x).bytes(10), and(x).bytes(11), and(x).bytes(12), and(x).bytes(13), and(x).bytes(14), and(x).bytes(15)
   --  SPDX-License-Identifier: LGPL-2.1+
   --**
   --  systemd is free software; you can redistribute it and/or modify it
   --  under the terms of the GNU Lesser General Public License as published by
   --  the Free Software Foundation; either version 2.1 of the License, or
   --  (at your option) any later version.
   --  systemd is distributed in the hope that it will be useful, but
   --  WITHOUT ANY WARRANTY; without even the implied warranty of
   --  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
   --  Lesser General Public License for more details.
   --  You should have received a copy of the GNU Lesser General Public License
   --  along with systemd; If not, see <http://www.gnu.org/licenses/>.
   --**

   --  Types

   type Sd_Bus is tagged private;

   type Message is tagged private;

   type Slot is tagged private;

   type Creds is tagged private;

   type Track is tagged private;

   --  skipped anonymous struct anon_53

   type Error is private;

   type Error_Map is private;

   --  Flags
   --  special flag, if on sd-bus will augment creds struct, in a potentially race-full way.
   --  SPDX-License-Identifier: LGPL-2.1+
   type Message_Handler_T is access function
     (Arg1 : access Message;
      Arg2 : System.Address;
      Arg3 : access Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:104

   type Property_Get_T is access function
     (Arg1 : access Sd_Bus;
      Arg2 : String;
      Arg3 : String;
      Arg4 : String;
      Arg5 : access Message;
      Arg6 : System.Address;
      Arg7 : access Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:105

   type Property_Set_T is access function
     (Arg1 : access Sd_Bus;
      Arg2 : String;
      Arg3 : String;
      Arg4 : String;
      Arg5 : access Message;
      Arg6 : System.Address;
      Arg7 : access Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:106

   type Object_Find_T is access function
     (Arg1 : access Sd_Bus;
      Arg2 : String;
      Arg3 : String;
      Arg4 : System.Address;
      Arg5 : System.Address;
      Arg6 : access Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:107

   type Node_Enumerator_T is access function
     (Arg1 : access Sd_Bus;
      Arg2 : String;
      Arg3 : System.Address;
      Arg4 : System.Address;
      Arg5 : access Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:108

   type Track_Handler_T is access function (Arg1 : access Track; Arg2 : System.Address) return Int
     with Convention => C;

   procedure Default (Bus : Sd_Bus);

   procedure Default_User (Bus : Sd_Bus);

   procedure Default_System (Bus : Sd_Bus);

   procedure Open (Bus : Sd_Bus);

   procedure Open_With_Description (Bus : in out Sd_Bus; Description : String);

   procedure Open_User (Bus : in out Sd_Bus);

   procedure Open_User_With_Description (Bus : in out Sd_Bus; Description : String);

   procedure Open_System (Bus : in out Sd_Bus);

   procedure Open_System_With_Description (Bus : in out Sd_Bus; Description : String);

   procedure Open_System_Remote (Bus : in out Sd_Bus; Host : String);

   procedure Open_System_Machine (Bus : in out Sd_Bus; Machine : String);

   procedure New_Bus (Bus : in out Sd_Bus);

   procedure Set_Address (Bus :  Sd_Bus; Address : String);


   procedure Set_Fd
     (Bus       : in out Sd_Bus;
      Input_Fd  : GNAT.OS_Lib.File_Descriptor;
      Output_Fd : GNAT.OS_Lib.File_Descriptor);

   function Set_Exec
     (Bus  : access Sd_Bus;
      Path : String;
      Argv : System.Address) return Int;

   function Get_Address (Bus : access Sd_Bus; Address : System.Address) return Int;

   function Set_Bus_Client (Bus : access Sd_Bus; B : Int) return Int;

   function Is_Bus_Client (Bus : access Sd_Bus) return Int;

   function Set_Server
     (Bus    : access Sd_Bus;
      B      : Int;
      Bus_Id : Systemd.Id128.Id128_T) return Int;

   function Is_Server (Bus : access Sd_Bus) return Int;

   function Set_Anonymous (Bus : access Sd_Bus; B : Int) return Int;

   function Is_Anonymous (Bus : access Sd_Bus) return Int;

   function Set_Trusted (Bus : access Sd_Bus; B : Int) return Int;

   function Is_Trusted (Bus : access Sd_Bus) return Int;

   function Set_Monitor (Bus : access Sd_Bus; B : Int) return Int;

   function Is_Monitor (Bus : access Sd_Bus) return Int;

   function Set_Description (Bus : access Sd_Bus; Description : String) return Int;

   function Get_Description (Bus : access Sd_Bus; Description : System.Address) return Int;

   function Negotiate_Creds
     (Bus        : access Sd_Bus;
      B          : Int;
      Creds_Mask : Unsigned_Long) return Int;

   function Negotiate_Timestamp (Bus : access Sd_Bus; B : Int) return Int;

   function Negotiate_Fds (Bus : access Sd_Bus; B : Int) return Int;

   function Can_Send (Bus : access Sd_Bus; C_Type : Char) return Int;

   function Get_Creds_Mask (Bus : access Sd_Bus; Creds_Mask : access Unsigned_Long) return Int;

   function Set_Allow_Interactive_Authorization (Bus : access Sd_Bus; B : Int) return Int;

   function Get_Allow_Interactive_Authorization (Bus : access Sd_Bus) return Int;

   function Set_Exit_On_Disconnect (Bus : access Sd_Bus; B : Int) return Int;

   function Get_Exit_On_Disconnect (Bus : access Sd_Bus) return Int;

   function Set_Close_On_Exit (Bus : access Sd_Bus; B : Int) return Int;

   function Get_Close_On_Exit (Bus : access Sd_Bus) return Int;

   function Set_Watch_Bind (Bus : access Sd_Bus; B : Int) return Int;

   function Get_Watch_Bind (Bus : access Sd_Bus) return Int;

   function Set_Connected_Signal (Bus : access Sd_Bus; B : Int) return Int;

   function Get_Connected_Signal (Bus : access Sd_Bus) return Int;

   function Set_Sender (Bus : access Sd_Bus; Sender : String) return Int;

   function Get_Sender (Bus : access Sd_Bus; Ret : System.Address) return Int;

   function Start (Bus : access Sd_Bus) return Int;

   function Try_Close (Bus : access Sd_Bus) return Int;

   procedure Close (Bus : access Sd_Bus);

   function Ref (Bus : access Sd_Bus) return access Sd_Bus;

   function Unref (Bus : access Sd_Bus) return access Sd_Bus;

   function Close_Unref (Bus : access Sd_Bus) return access Sd_Bus;

   function Flush_Close_Unref (Bus : access Sd_Bus) return access Sd_Bus;

   procedure Default_Flush_Close;

   function Is_Open (Bus : access Sd_Bus) return Int;

   function Is_Ready (Bus : access Sd_Bus) return Int;

   function Get_Bus_Id (Bus : access Sd_Bus; Id : Systemd.Id128.Id128_T) return Int;

   function Get_Scope (Bus : access Sd_Bus; Scope : System.Address) return Int;

   function Get_Tid (Bus : access Sd_Bus; Tid : access Int) return Int;

   function Get_Owner_Creds
     (Bus        : access Sd_Bus;
      Creds_Mask : Unsigned_Long;
      Ret        : System.Address) return Int;

   function Send
     (Bus    : access Sd_Bus;
      M      : access Message'Class;
      Cookie : access Unsigned_Long) return Int ;

   function Send_To
     (Bus         : access Sd_Bus;
      M           : access Message'Class;
      Destination : String;
      Cookie      : access Unsigned_Long) return Int;

   function Call
     (Bus       : access Sd_Bus;
      M         : access Message'Class;
      Usec      : Unsigned_Long;
      Ret_Error : access Error;
      Reply     : System.Address) return Int;

   function Call_Async
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      M        : access Message'Class;
      Callback : Message_Handler_T;
      Userdata : System.Address;
      Usec     : Unsigned_Long) return Int;

   function Get_Fd (Bus : access Sd_Bus) return Int;

   function Get_Events (Bus : access Sd_Bus) return Int;

   function Get_Timeout (Bus : access Sd_Bus; Timeout_Usec : access Unsigned_Long) return Int;

   function Process (Bus : access Sd_Bus; R : System.Address) return Int;

   function Process_Priority
     (Bus          : access Sd_Bus;
      Max_Priority : Long;
      R            : System.Address) return Int;

   function Wait (Bus : access Sd_Bus; Timeout_Usec : Unsigned_Long) return Int;

   function Flush (Bus : access Sd_Bus) return Int;

   function Get_Current_Slot (Bus : access Sd_Bus) return access Slot'Class;

   function Get_Current_Message (Bus : access Sd_Bus) return access Message'Class;

   function Get_Current_Handler (Bus : access Sd_Bus) return Message_Handler_T;

   function Get_Current_Userdata (Bus : access Sd_Bus) return System.Address;

   function Attach_Event
     (Bus      : access Sd_Bus;
      E        : access Systemd.Event.Sd_Event;
      Priority : Int) return Int;

   function Detach_Event (Bus : access Sd_Bus) return Int;

   function Get_Event (Bus : access Sd_Bus) return access Systemd.Event.Sd_Event;

   function Get_N_Queued_Read (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int;

   function Get_N_Queued_Write (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int;

   function Set_Method_Call_Timeout (Bus : access Sd_Bus; Usec : Unsigned_Long) return Int;

   function Get_Method_Call_Timeout (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int;

   function Add_Filter
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Callback : Message_Handler_T;
      Userdata : System.Address) return Int ;

   function Add_Match
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Match    : String;
      Callback : Message_Handler_T;
      Userdata : System.Address) return Int;

   function Add_Match_Async
     (Bus              : access Sd_Bus;
      Slot             : System.Address;
      Match            : String;
      Callback         : Message_Handler_T;
      Install_Callback : Message_Handler_T;
      Userdata         : System.Address) return Int;

   function Add_Object
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Path     : String;
      Callback : Message_Handler_T;
      Userdata : System.Address) return Int;

   function Add_Fallback
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Prefix   : String;
      Callback : Message_Handler_T;
      Userdata : System.Address) return Int;

   function Add_Object_Vtable
     (Bus         : access Sd_Bus;
      Slot        : System.Address;
      Path        : String;
      C_Interface : String;
      Vtable      : access constant Systemd.Bus.Vtable.Sd_Bus_Vtable;
      Userdata    : System.Address) return Int;

   function Add_Fallback_Vtable
     (Bus         : access Sd_Bus;
      Slot        : System.Address;
      Prefix      : String;
      C_Interface : String;
      Vtable      : access constant Systemd.Bus.Vtable.Sd_Bus_Vtable;
      Find        : Object_Find_T;
      Userdata    : System.Address) return Int;

   function Add_Node_Enumerator
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Path     : String;
      Callback : Node_Enumerator_T;
      Userdata : System.Address) return Int;

   function Add_Object_Manager
     (Bus  : access Sd_Bus;
      Slot : System.Address;
      Path : String) return Int;

   --  Slot object
   function Slot_Ref (S : access Slot) return access Slot'Class;

   function Slot_Unref (S : access Slot) return access Slot'Class;

   function Slot_Get_Bus (S : access Slot) return access Sd_Bus'Class;

   function Slot_Get_Userdata (S : access Slot) return System.Address;

   function Slot_Set_Userdata (S : access Slot; Userdata : System.Address) return System.Address;

   function Slot_Set_Description (S : access Slot; Description : String) return Int;

   function Slot_Get_Description (S : access Slot; Description : System.Address) return Int;

   function Slot_Get_Floating (S : access Slot) return Int;

   function Slot_Set_Floating (S : access Slot; B : Int) return Int;

   function Slot_Set_Destroy_Callback (S : access Slot; Callback : Destroy_T) return Int;

   function Slot_Get_Destroy_Callback (S : access Slot; Callback : System.Address) return Int;

   function Slot_Get_Current_Message (S : access Slot) return access Message'Class;

   function Slot_Get_Current_Handler (S : access Slot) return Message_Handler_T;

   function Slot_Get_Current_Userdata (S : access Slot) return System.Address;

   --  Message object
   function Message_New
     (Bus    : access Sd_Bus;
      M      : System.Address;
      C_Type : Unsigned_Char) return Int  -- /usr/include/systemd/sd-bus.h:245
   ;

   function Message_New_Signal
     (Bus         : access Sd_Bus;
      M           : System.Address;
      Path        : String;
      C_Interface : String;
      Member      : String) return Int  -- /usr/include/systemd/sd-bus.h:246
   ;

   function Message_New_Method_Call
     (Bus         : access Sd_Bus;
      M           : System.Address;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String) return Int  -- /usr/include/systemd/sd-bus.h:247
   ;

   function Message_New_Method_Return (Call : access Message; M : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:248
   ;

   function Message_New_Method_Error
     (Call : access Message;
      M    : System.Address;
      E    : access constant Error) return Int  -- /usr/include/systemd/sd-bus.h:249
   ;

   function Message_New_Method_Errorf
     (Call   : access Message;
      M      : System.Address;
      Name   : String;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:250
   ;

   function Message_New_Method_Errno
     (Call      : access Message;
      M         : System.Address;
      ErrorCode : Int;
      E         : access constant Error) return Int  -- /usr/include/systemd/sd-bus.h:251
   ;

   function Message_New_Method_Errnof
     (Call   : access Message;
      M      : System.Address;
      Error  : Int;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:252
   ;

   function Message_Ref (M : access Message) return access Message  -- /usr/include/systemd/sd-bus.h:254
   ;

   function Message_Unref (M : access Message) return access Message  -- /usr/include/systemd/sd-bus.h:255
   ;

   function Message_Seal
     (M            : access Message;
      Cookie       : Unsigned_Long;
      Timeout_Usec : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:257
   ;

   function Message_Get_Type (M : access Message; C_Type : access Unsigned_Char) return Int  -- /usr/include/systemd/sd-bus.h:259
   ;

   function Message_Get_Cookie (M : access Message; Cookie : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:260
   ;

   function Message_Get_Reply_Cookie (M : access Message; Cookie : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:261
   ;

   function Message_Get_Priority (M : access Message; Priority : access Long) return Int  -- /usr/include/systemd/sd-bus.h:262
   ;

   function Message_Get_Expect_Reply (M : access Message) return Int  -- /usr/include/systemd/sd-bus.h:264
   ;

   function Message_Get_Auto_Start (M : access Message) return Int  -- /usr/include/systemd/sd-bus.h:265
   ;

   function Message_Get_Allow_Interactive_Authorization (M : access Message) return Int  -- /usr/include/systemd/sd-bus.h:266
   ;

   function Message_Get_Signature (M : access Message; Complete : Int) return String  -- /usr/include/systemd/sd-bus.h:268
   ;

   function Message_Get_Path (M : access Message) return String  -- /usr/include/systemd/sd-bus.h:269
   ;

   function Message_Get_Interface (M : access Message) return String  -- /usr/include/systemd/sd-bus.h:270
   ;

   function Message_Get_Member (M : access Message) return String  -- /usr/include/systemd/sd-bus.h:271
   ;

   function Message_Get_Destination (M : access Message) return String  -- /usr/include/systemd/sd-bus.h:272
   ;

   function Message_Get_Sender (M : access Message) return String  -- /usr/include/systemd/sd-bus.h:273
   ;

   function Message_Get_Error (M : access Message) return access constant Error  -- /usr/include/systemd/sd-bus.h:274
   ;

   function Message_Get_Errno (M : access Message) return Int  -- /usr/include/systemd/sd-bus.h:275
   ;

   function Message_Get_Monotonic_Usec (M : access Message; Usec : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:277
   ;

   function Message_Get_Realtime_Usec (M : access Message; Usec : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:278
   ;

   function Message_Get_Seqnum (M : access Message; Seqnum : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:279
   ;

   function Message_Get_Bus (M : access Message) return access Sd_Bus'CLASS;

   function Message_Get_Creds (M : access Message) return access Creds'Class;

   function Message_Is_Signal
     (M           : access Message;
      C_Interface : String;
      Member      : String) return Int  -- /usr/include/systemd/sd-bus.h:284
   ;

   function Message_Is_Method_Call
     (M           : access Message;
      C_Interface : String;
      Member      : String) return Int  -- /usr/include/systemd/sd-bus.h:285
   ;

   function Message_Is_Method_Error (M : access Message; Name : String) return Int  -- /usr/include/systemd/sd-bus.h:286
   ;

   function Message_Is_Empty (M : access Message) return Int  -- /usr/include/systemd/sd-bus.h:287
   ;

   function Message_Has_Signature (M : access Message; Signature : String) return Int  -- /usr/include/systemd/sd-bus.h:288
   ;

   function Message_Set_Expect_Reply (M : access Message; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:290
   ;

   function Message_Set_Auto_Start (M : access Message; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:291
   ;

   function Message_Set_Allow_Interactive_Authorization (M : access Message; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:292
   ;

   function Message_Set_Destination (M : access Message; Destination : String) return Int  -- /usr/include/systemd/sd-bus.h:294
   ;

   function Message_Set_Sender (M : access Message; Sender : String) return Int  -- /usr/include/systemd/sd-bus.h:295
   ;

   function Message_Set_Priority (M : access Message; Priority : Long) return Int  -- /usr/include/systemd/sd-bus.h:296
   ;

   function Message_Append (M : access Message; Types : String  -- , ...
                           ) return Int  -- /usr/include/systemd/sd-bus.h:298
   ;

   function Message_Appendv
     (M     : access Message;
      Types : String;
      Ap    : access System.Address) return Int  -- /usr/include/systemd/sd-bus.h:299
   ;

   function Message_Append_Basic
     (M      : access Message;
      C_Type : Char;
      P      : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:300
   ;

   function Message_Append_Array
     (M      : access Message;
      C_Type : Char;
      Ptr    : System.Address;
      Size   : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:301
   ;

   function Message_Append_Array_Space
     (M      : access Message;
      C_Type : Char;
      Size   : Unsigned_Long;
      Ptr    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:302
   ;

   function Message_Append_Array_Iovec
     (M      : access Message;
      C_Type : Char;
      Iov    : access constant System.Address;
      N      : Unsigned) return Int  -- /usr/include/systemd/sd-bus.h:303
   ;

   function Message_Append_Array_Memfd
     (M      : access Message;
      C_Type : Char;
      Memfd  : Int;
      Offset : Unsigned_Long;
      Size   : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:304
   ;

   function Message_Append_String_Space
     (M    : access Message;
      Size : Unsigned_Long;
      S    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:305
   ;

   function Message_Append_String_Iovec
     (M   : access Message;
      Iov : access constant System.Address;
      N   : Unsigned) return Int  -- /usr/include/systemd/sd-bus.h:306
   ;

   function Message_Append_String_Memfd
     (M      : access Message;
      Memfd  : Int;
      Offset : Unsigned_Long;
      Size   : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:307
   ;

   function Message_Append_Strv (M : access Message; L : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:308
   ;

   function Message_Open_Container
     (M        : access Message;
      C_Type   : Char;
      Contents : String) return Int  -- /usr/include/systemd/sd-bus.h:309
   ;

   function Message_Close_Container (M : access Message) return Int  -- /usr/include/systemd/sd-bus.h:310
   ;

   function Message_Copy
     (M      : access Message;
      Source : access Message;
      C_All  : Int) return Int  -- /usr/include/systemd/sd-bus.h:311
   ;

   function Message_Read (M : access Message; Types : String  -- , ...
                         ) return Int  -- /usr/include/systemd/sd-bus.h:313
   ;

   function Message_Readv
     (M     : access Message;
      Types : String;
      Ap    : access System.Address) return Int  -- /usr/include/systemd/sd-bus.h:314
   ;

   function Message_Read_Basic
     (M      : access Message;
      C_Type : Char;
      P      : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:315
   ;

   function Message_Read_Array
     (M      : access Message;
      C_Type : Char;
      Ptr    : System.Address;
      Size   : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:316
   ;

   --  free the result!
   function Message_Read_Strv (M : access Message; L : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:317
   ;

   function Message_Skip (M : access Message; Types : String) return Int  -- /usr/include/systemd/sd-bus.h:318
   ;

   function Message_Enter_Container
     (M        : access Message;
      C_Type   : Char;
      Contents : String) return Int  -- /usr/include/systemd/sd-bus.h:319
   ;

   function Message_Exit_Container (M : access Message) return Int  -- /usr/include/systemd/sd-bus.h:320
   ;

   function Message_Peek_Type
     (M        : access Message;
      C_Type   : String;
      Contents : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:321
   ;

   function Message_Verify_Type
     (M        : access Message;
      C_Type   : Char;
      Contents : String) return Int  -- /usr/include/systemd/sd-bus.h:322
   ;

   function Message_At_End (M : access Message; Complete : Int) return Int  -- /usr/include/systemd/sd-bus.h:323
   ;

   function Message_Rewind (M : access Message; Complete : Int) return Int  -- /usr/include/systemd/sd-bus.h:324
   ;

   --  Bus management
   function Get_Unique_Name (Bus : access Sd_Bus; Unique : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:328
   ;

   function Request_Name
     (Bus   : access Sd_Bus;
      Name  : String;
      Flags : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:329
   ;

   function Request_Name_Async
     (Bus      : access Sd_Bus;
      Ret_Slot : System.Address;
      Name     : String;
      Flags    : Unsigned_Long;
      Callback : Message_Handler_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:330
   ;

   function Release_Name (Bus : access Sd_Bus; Name : String) return Int  -- /usr/include/systemd/sd-bus.h:331
   ;

   function Release_Name_Async
     (Bus      : access Sd_Bus;
      Ret_Slot : System.Address;
      Name     : String;
      Callback : Message_Handler_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:332
   ;

   --  free the results
   function List_Names
     (Bus         : access Sd_Bus;
      Acquired    : System.Address;
      Activatable : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:333
   ;

   --  unref the result!
   function Get_Name_Creds
     (Bus   : access Sd_Bus;
      Name  : String;
      Mask  : Unsigned_Long;
      Creds : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:334
   ;

   function Get_Name_Machine_Id
     (Bus     : access Sd_Bus;
      Name    : String;
      Machine : Systemd.Id128.Id128_T) return Int  -- /usr/include/systemd/sd-bus.h:335
   ;

   --  Convenience calls
   function Call_Method
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Error;
      Reply       : System.Address;
      Types       : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:339
   ;

   function Call_Method_Async
     (Bus         : access Sd_Bus;
      Slot        : System.Address;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Callback    : Message_Handler_T;
      Userdata    : System.Address;
      Types       : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:340
   ;

   function Get_Property
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Error;
      Reply       : System.Address;
      C_Type      : String) return Int  -- /usr/include/systemd/sd-bus.h:341
   ;

   function Get_Property_Trivial
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Error;
      C_Type      : Char;
      Ret_Ptr     : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:342
   ;

   --  free the result!
   function Get_Property_String
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Error;
      Ret         : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:343
   ;

   --  free the result!
   function Get_Property_Strv
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Error;
      Ret         : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:344
   ;

   function Set_Property
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Error;
      C_Type      : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:345
   ;

   function Reply_Method_Return (Call : access Message; Types : String  -- , ...
                                ) return Int  -- /usr/include/systemd/sd-bus.h:347
   ;

   function Reply_Method_Error (Call : access Message; E : access constant Error) return Int  -- /usr/include/systemd/sd-bus.h:348
   ;

   function Reply_Method_Errorf
     (Call   : access Message;
      Name   : String;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:349
   ;

   function Reply_Method_Errno
     (Call      : access Message;
      ErrorCode : Int;
      E         : access constant Error) return Int  -- /usr/include/systemd/sd-bus.h:350
   ;

   function Reply_Method_Errnof
     (Call   : access Message;
      Error  : Int;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:351
   ;

   function Emit_Signal
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Types       : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:353
   ;

   function Emit_Properties_Changed_Strv
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String;
      Names       : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:355
   ;

   function Emit_Properties_Changed
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String;
      Name        : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:356
   ;

   function Emit_Object_Added (Bus : access Sd_Bus; Path : String) return Int  -- /usr/include/systemd/sd-bus.h:358
   ;

   function Emit_Object_Removed (Bus : access Sd_Bus; Path : String) return Int  -- /usr/include/systemd/sd-bus.h:359
   ;

   function Emit_Interfaces_Added_Strv
     (Bus        : access Sd_Bus;
      Path       : String;
      Interfaces : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:360
   ;

   function Emit_Interfaces_Added
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:361
   ;

   function Emit_Interfaces_Removed_Strv
     (Bus        : access Sd_Bus;
      Path       : String;
      Interfaces : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:362
   ;

   function Emit_Interfaces_Removed
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:363
   ;

   function Query_Sender_Creds
     (Call  : access Message;
      Mask  : Unsigned_Long;
      Creds : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:365
   ;

   function Query_Sender_Privilege (Call : access Message; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:366
   ;

   function Match_Signal
     (Bus         : access Sd_Bus;
      Ret         : System.Address;
      Sender      : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Callback    : Message_Handler_T;
      Userdata    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:368
   ;

   function Match_Signal_Async
     (Bus            : access Sd_Bus;
      Ret            : System.Address;
      Sender         : String;
      Path           : String;
      C_Interface    : String;
      Member         : String;
      Match_Callback : Message_Handler_T;
      Add_Callback   : Message_Handler_T;
      Userdata       : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:369
   ;

   --  Credential handling
   function Creds_New_From_Pid
     (Ret        : System.Address;
      Pid        : Int;
      Creds_Mask : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:373
   ;

   function Creds_Ref (C : access Creds) return access Creds  -- /usr/include/systemd/sd-bus.h:374
   ;

   function Creds_Unref (C : access Creds) return access Creds  -- /usr/include/systemd/sd-bus.h:375
   ;

   function Creds_Get_Mask (C : access constant Creds) return Unsigned_Long  -- /usr/include/systemd/sd-bus.h:376
   ;

   function Creds_Get_Augmented_Mask (C : access constant Creds) return Unsigned_Long  -- /usr/include/systemd/sd-bus.h:377
   ;

   function Creds_Get_Pid (C : access Creds; Pid : access Int) return Int;

   function Creds_Get_Ppid (C : access Creds; Ppid : access Int) return Int;

   function Creds_Get_Tid (C : access Creds; Tid : access Int) return Int;

   function Creds_Get_Uid (C : access Creds; Uid : access Uid_T) return Int;

   function Creds_Get_Euid (C : access Creds; Euid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:383
   ;

   function Creds_Get_Suid (C : access Creds; Suid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:384
   ;

   function Creds_Get_Fsuid (C : access Creds; Fsuid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:385
   ;

   function Creds_Get_Gid (C : access Creds; Gid : access Gid_T) return Int  -- /usr/include/systemd/sd-bus.h:386
   ;

   function Creds_Get_Egid (C : access Creds; Egid : access Gid_T) return Int  -- /usr/include/systemd/sd-bus.h:387
   ;

   function Creds_Get_Sgid (C : access Creds; Sgid : access Gid_T) return Int  -- /usr/include/systemd/sd-bus.h:388
   ;

   function Creds_Get_Fsgid (C : access Creds; Fsgid : access Gid_T) return Int  -- /usr/include/systemd/sd-bus.h:389
   ;

   function Creds_Get_Supplementary_Gids (C : access Creds; Gids : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:390
   ;

   function Creds_Get_Comm (C : access Creds; Comm : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:391
   ;

   function Creds_Get_Tid_Comm (C : access Creds; Comm : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:392
   ;

   function Creds_Get_Exe (C : access Creds; Exe : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:393
   ;

   function Creds_Get_Cmdline (C : access Creds; Cmdline : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:394
   ;

   function Creds_Get_Cgroup (C : access Creds; Cgroup : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:395
   ;

   function Creds_Get_Unit (C : access Creds; Unit : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:396
   ;

   function Creds_Get_Slice (C : access Creds; Slice : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:397
   ;

   function Creds_Get_User_Unit (C : access Creds; Unit : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:398
   ;

   function Creds_Get_User_Slice (C : access Creds; Slice : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:399
   ;

   function Creds_Get_Session (C : access Creds; Session : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:400
   ;

   function Creds_Get_Owner_Uid (C : access Creds; Uid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:401
   ;

   function Creds_Has_Effective_Cap (C : access Creds; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:402
   ;

   function Creds_Has_Permitted_Cap (C : access Creds; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:403
   ;

   function Creds_Has_Inheritable_Cap (C : access Creds; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:404
   ;

   function Creds_Has_Bounding_Cap (C : access Creds; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:405
   ;

   function Creds_Get_Selinux_Context (C : access Creds; Context : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:406
   ;

   function Creds_Get_Audit_Session_Id (C : access Creds; Sessionid : access Unsigned) return Int  -- /usr/include/systemd/sd-bus.h:407
   ;

   function Creds_Get_Audit_Login_Uid (C : access Creds; Loginuid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:408
   ;

   function Creds_Get_Tty (C : access Creds; Tty : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:409
   ;

   function Creds_Get_Unique_Name (C : access Creds; Name : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:410
   ;

   function Creds_Get_Well_Known_Names (C : access Creds; Names : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:411
   ;

   function Creds_Get_Description (C : access Creds; Name : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:412
   ;

   --  Error structures
   procedure Error_Free (E : access Error)  -- /usr/include/systemd/sd-bus.h:419
   ;

   function Error_Set
     (E       : access Error;
      Name    : String;
      Message : String) return Int  -- /usr/include/systemd/sd-bus.h:420
   ;

   function Error_Setf
     (E      : access Error;
      Name   : String;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:421
   ;

   function Error_Set_Const
     (E       : access Error;
      Name    : String;
      Message : String) return Int  -- /usr/include/systemd/sd-bus.h:422
   ;

   function Error_Set_Errno (E : access Error; Error : Int) return Int  -- /usr/include/systemd/sd-bus.h:423
   ;

   function Error_Set_Errnof
     (E      : access Error;
      Error  : Int;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:424
   ;

   function Error_Set_Errnofv
     (E      : access Error;
      Error  : Int;
      Format : String;
      Ap     : access System.Address) return Int  -- /usr/include/systemd/sd-bus.h:425
   ;

   function Error_Get_Errno (E : access constant Error) return Int  -- /usr/include/systemd/sd-bus.h:426
   ;

   function Error_Copy (Dest : access Error; E : access constant Error) return Int  -- /usr/include/systemd/sd-bus.h:427
   ;

   function Error_Move (Dest : access Error; E : access Error) return Int  -- /usr/include/systemd/sd-bus.h:428
   ;

   function Error_Is_Set (E : access constant Error) return Int  -- /usr/include/systemd/sd-bus.h:429
   ;

   function Error_Has_Name (E : access constant Error; Name : String) return Int  -- /usr/include/systemd/sd-bus.h:430
   ;

   function Error_Add_Map (Map : access constant Error_Map) return Int  -- /usr/include/systemd/sd-bus.h:443
   ;

   --  Auxiliary macros
   --  Label escaping
   function Path_Encode
     (Prefix      : String;
      External_Id : String;
      Ret_Path    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:461
   ;

   function Path_Encode_Many (C_Out : System.Address; Path_Template : String  -- , ...
                             ) return Int  -- /usr/include/systemd/sd-bus.h:462
   ;

   function Path_Decode
     (Path            : String;
      Prefix          : String;
      Ret_External_Id : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:463
   ;

   function Path_Decode_Many (Path : String; Path_Template : String  -- , ...
                             ) return Int  -- /usr/include/systemd/sd-bus.h:464
   ;

   --  Tracking peers

   function Track_New
     (Bus      : access Sd_Bus;
      Track    : System.Address;
      Handler  : Track_Handler_T;
      Userdata : System.Address) return Int;

   function Track_Ref (T : access Track) return access Track'Class;

   function Track_Unref (T : access Track) return access Track'Class;

   function Track_Get_Bus (T : access Track) return access Sd_Bus'Class;

   function Track_Get_Userdata (T : access Track) return System.Address;

   function Track_Set_Userdata (T : access Track; Userdata : System.Address) return System.Address;

   function Track_Add_Sender (T : access Track; M : access Message'Class) return Int;

   function Track_Remove_Sender (T : access Track; M : access Message'Class) return Int;

   function Track_Add_Name (T : access Track; Name : String) return Int;

   function Track_Remove_Name (T : access Track; Name : String) return Int;

   function Track_Set_Recursive (T : access Track; B : Int) return Int;

   function Track_Get_Recursive (T : access Track) return Int;

   function Track_Count (T : access Track) return Unsigned;

   function Track_Count_Sender (T : access Track; M : access Message'Class) return Int;

   function Track_Count_Name (T : access Track; Name : String) return Int;

   function Track_Contains (T : access Track; Name : String) return String;

   function Track_First (T : access Track) return String;

   function Track_Next (T : access Track) return String;

   function Track_Set_Destroy_Callback (S : access Track; Callback : Destroy_T) return Int;

   function Track_Get_Destroy_Callback (S : access Track; Ret : System.Address) return Int;

   --  Define helpers so that __attribute__((cleanup(sd_bus_unrefp))) and similar may be used.
   procedure Unrefp (P : System.Address);

   procedure Close_Unrefp (P : System.Address);

   procedure Flush_Close_Unrefp (P : System.Address);

   procedure Slot_Unrefp (P : System.Address);

   procedure Message_Unrefp (P : System.Address);

   procedure Creds_Unrefp (P : System.Address);

   procedure Track_Unrefp (P : System.Address);

private
   type Error is new Integer;

   type Error_Map is new Integer;
   type Sd_Bus_Access is access all Systemd.Low_Level.Systemd_Sd_Bus_H.Sd_Bus with Storage_Size => 0;

   type Sd_Bus is new Ada.Finalization.Controlled with record
      Impl : aliased Sd_Bus_Access;
   end record;

   type Message is new Ada.Finalization.Controlled with record
      Impl : Boolean;
   end record;

   type Slot is new Ada.Finalization.Controlled with record
      Impl : Boolean;
   end record;

   type Creds is new Ada.Finalization.Controlled with record
      Impl : Boolean;
   end record;

   type Track is new Ada.Finalization.Controlled with record
      Impl : Boolean;
   end record;

end Systemd.Bus;
