pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
--  with Systemd.Low_Level.systemd_usd_common_h;
--  with Systemd.Low_Level.systemd_sd_id128_h;



--  limited with Systemd.Low_Level.systemd_sd_event_h;
--  limited with Systemd.Low_Level.systemd_sd_bus_vtable_h;

with Systemd.Event;
with Systemd.Id128;
limited with Systemd.Bus.Vtable;
package Systemd.Bus is

   type Uid_T is new Integer;
   type GId_T is new Integer;
   --  unsupported macro: SD_BUS_DEFAULT ((sd_bus *) 1)
   --  unsupported macro: SD_BUS_DEFAULT_USER ((sd_bus *) 2)
   --  unsupported macro: SD_BUS_DEFAULT_SYSTEM ((sd_bus *) 3)
   --  arg-macro: function SD_BUS_ERROR_MAKE_CONST (name, message)
   --    return (const sd_bus_error) {(name), (message), 0};
   --  unsupported macro: SD_BUS_ERROR_NULL SD_BUS_ERROR_MAKE_CONST(NULL, NULL)
   --  arg-macro: procedure SD_BUS_ERROR_MAP (_name, _code)
   --    { .name := _name, .code := _code, }
   --  unsupported macro: SD_BUS_ERROR_MAP_END { .name = NULL, .code = - 'x', }
   --  arg-macro: procedure SD_BUS_MESSAGE_APPEND_ID128 (x)
   --    16, (x).bytes(0), (x).bytes(1), (x).bytes(2), (x).bytes(3), (x).bytes(4), (x).bytes(5), (x).bytes(6), (x).bytes(7), (x).bytes(8), (x).bytes(9), (x).bytes(10), (x).bytes(11), (x).bytes(12), (x).bytes(13), (x).bytes(14), (x).bytes(15)
   --  arg-macro: procedure SD_BUS_MESSAGE_READ_ID128 (x)
   --    16, and(x).bytes(0), and(x).bytes(1), and(x).bytes(2), and(x).bytes(3), and(x).bytes(4), and(x).bytes(5), and(x).bytes(6), and(x).bytes(7), and(x).bytes(8), and(x).bytes(9), and(x).bytes(10), and(x).bytes(11), and(x).bytes(12), and(x).bytes(13), and(x).bytes(14), and(x).bytes(15)
   -- SPDX-License-Identifier: LGPL-2.1+
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

   -- Types
   type Sd_Bus is null record;   -- incomplete struct

   type Sd_Bus_Message is null record;   -- incomplete struct

   type Sd_Bus_Slot is null record;   -- incomplete struct

   type Sd_Bus_Creds is null record;   -- incomplete struct

   type Sd_Bus_Track is null record;   -- incomplete struct

   --  skipped anonymous struct anon_53

   type Sd_Bus_Error is record
      Name        : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus.h:45
      Message     : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus.h:46
      U_Need_Free : aliased Int;  -- /usr/include/systemd/sd-bus.h:47
   end record
     with Convention => C_Pass_By_Copy;  -- /usr/include/systemd/sd-bus.h:48

   --  skipped anonymous struct anon_54

   type Sd_Bus_Error_Map is record
      Name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus.h:51
      Code : aliased Int;  -- /usr/include/systemd/sd-bus.h:52
   end record
     with Convention => C_Pass_By_Copy;  -- /usr/include/systemd/sd-bus.h:53

   -- Flags
   -- special flag, if on sd-bus will augment creds struct, in a potentially race-full way.
   -- SPDX-License-Identifier: LGPL-2.1+
   type Sd_Bus_Message_Handler_T is access function
     (Arg1 : access Sd_Bus_Message;
      Arg2 : System.Address;
      Arg3 : access Sd_Bus_Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:104

   type Sd_Bus_Property_Get_T is access function
     (Arg1 : access Sd_Bus;
      Arg2 : String;
      Arg3 : String;
      Arg4 : String;
      Arg5 : access Sd_Bus_Message;
      Arg6 : System.Address;
      Arg7 : access Sd_Bus_Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:105

   type Sd_Bus_Property_Set_T is access function
     (Arg1 : access Sd_Bus;
      Arg2 : String;
      Arg3 : String;
      Arg4 : String;
      Arg5 : access Sd_Bus_Message;
      Arg6 : System.Address;
      Arg7 : access Sd_Bus_Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:106

   type Sd_Bus_Object_Find_T is access function
     (Arg1 : access Sd_Bus;
      Arg2 : String;
      Arg3 : String;
      Arg4 : System.Address;
      Arg5 : System.Address;
      Arg6 : access Sd_Bus_Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:107

   type Sd_Bus_Node_Enumerator_T is access function
     (Arg1 : access Sd_Bus;
      Arg2 : String;
      Arg3 : System.Address;
      Arg4 : System.Address;
      Arg5 : access Sd_Bus_Error) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:108

   type Sd_Bus_Track_Handler_T is access function (Arg1 : access Sd_Bus_Track; Arg2 : System.Address) return Int
     with Convention => C;  -- /usr/include/systemd/sd-bus.h:109

   -- Connections
   function Sd_Bus_Default (Ret : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:117
   ;

   function Sd_Bus_Default_User (Ret : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:118
   ;

   function Sd_Bus_Default_System (Ret : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:119
   ;

   function Sd_Bus_Open (Ret : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:121
   ;

   function Sd_Bus_Open_With_Description (Ret : System.Address; Description : String) return Int  -- /usr/include/systemd/sd-bus.h:122
   ;

   function Sd_Bus_Open_User (Ret : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:123
   ;

   function Sd_Bus_Open_User_With_Description (Ret : System.Address; Description : String) return Int  -- /usr/include/systemd/sd-bus.h:124
   ;

   function Sd_Bus_Open_System (Ret : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:125
   ;

   function Sd_Bus_Open_System_With_Description (Ret : System.Address; Description : String) return Int  -- /usr/include/systemd/sd-bus.h:126
   ;

   function Sd_Bus_Open_System_Remote (Ret : System.Address; Host : String) return Int  -- /usr/include/systemd/sd-bus.h:127
   ;

   function Sd_Bus_Open_System_Machine (Ret : System.Address; Machine : String) return Int  -- /usr/include/systemd/sd-bus.h:128
   ;

   function Sd_Bus_New (Ret : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:130
   ;

   function Sd_Bus_Set_Address (Bus : access Sd_Bus; Address : String) return Int  -- /usr/include/systemd/sd-bus.h:132
   ;

   function Sd_Bus_Set_Fd
     (Bus       : access Sd_Bus;
      Input_Fd  : Int;
      Output_Fd : Int) return Int  -- /usr/include/systemd/sd-bus.h:133
   ;

   function Sd_Bus_Set_Exec
     (Bus  : access Sd_Bus;
      Path : String;
      Argv : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:134
   ;

   function Sd_Bus_Get_Address (Bus : access Sd_Bus; Address : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:135
   ;

   function Sd_Bus_Set_Bus_Client (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:136
   ;

   function Sd_Bus_Is_Bus_Client (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:137
   ;

   function Sd_Bus_Set_Server
     (Bus    : access Sd_Bus;
      B      : Int;
      Bus_Id : Systemd.Id128.Id128_T) return Int  -- /usr/include/systemd/sd-bus.h:138
   ;

   function Sd_Bus_Is_Server (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:139
   ;

   function Sd_Bus_Set_Anonymous (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:140
   ;

   function Sd_Bus_Is_Anonymous (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:141
   ;

   function Sd_Bus_Set_Trusted (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:142
   ;

   function Sd_Bus_Is_Trusted (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:143
   ;

   function Sd_Bus_Set_Monitor (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:144
   ;

   function Sd_Bus_Is_Monitor (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:145
   ;

   function Sd_Bus_Set_Description (Bus : access Sd_Bus; Description : String) return Int  -- /usr/include/systemd/sd-bus.h:146
   ;

   function Sd_Bus_Get_Description (Bus : access Sd_Bus; Description : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:147
   ;

   function Sd_Bus_Negotiate_Creds
     (Bus        : access Sd_Bus;
      B          : Int;
      Creds_Mask : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:148
   ;

   function Sd_Bus_Negotiate_Timestamp (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:149
   ;

   function Sd_Bus_Negotiate_Fds (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:150
   ;

   function Sd_Bus_Can_Send (Bus : access Sd_Bus; C_Type : Char) return Int  -- /usr/include/systemd/sd-bus.h:151
   ;

   function Sd_Bus_Get_Creds_Mask (Bus : access Sd_Bus; Creds_Mask : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:152
   ;

   function Sd_Bus_Set_Allow_Interactive_Authorization (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:153
   ;

   function Sd_Bus_Get_Allow_Interactive_Authorization (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:154
   ;

   function Sd_Bus_Set_Exit_On_Disconnect (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:155
   ;

   function Sd_Bus_Get_Exit_On_Disconnect (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:156
   ;

   function Sd_Bus_Set_Close_On_Exit (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:157
   ;

   function Sd_Bus_Get_Close_On_Exit (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:158
   ;

   function Sd_Bus_Set_Watch_Bind (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:159
   ;

   function Sd_Bus_Get_Watch_Bind (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:160
   ;

   function Sd_Bus_Set_Connected_Signal (Bus : access Sd_Bus; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:161
   ;

   function Sd_Bus_Get_Connected_Signal (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:162
   ;

   function Sd_Bus_Set_Sender (Bus : access Sd_Bus; Sender : String) return Int  -- /usr/include/systemd/sd-bus.h:163
   ;

   function Sd_Bus_Get_Sender (Bus : access Sd_Bus; Ret : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:164
   ;

   function Sd_Bus_Start (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:166
   ;

   function Sd_Bus_Try_Close (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:168
   ;

   procedure Sd_Bus_Close (Bus : access Sd_Bus)  -- /usr/include/systemd/sd-bus.h:169
   ;

   function Sd_Bus_Ref (Bus : access Sd_Bus) return access Sd_Bus  -- /usr/include/systemd/sd-bus.h:171
   ;

   function Sd_Bus_Unref (Bus : access Sd_Bus) return access Sd_Bus  -- /usr/include/systemd/sd-bus.h:172
   ;

   function Sd_Bus_Close_Unref (Bus : access Sd_Bus) return access Sd_Bus  -- /usr/include/systemd/sd-bus.h:173
   ;

   function Sd_Bus_Flush_Close_Unref (Bus : access Sd_Bus) return access Sd_Bus  -- /usr/include/systemd/sd-bus.h:174
   ;

   procedure Sd_Bus_Default_Flush_Close  -- /usr/include/systemd/sd-bus.h:176
   ;

   function Sd_Bus_Is_Open (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:178
   ;

   function Sd_Bus_Is_Ready (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:179
   ;

   function Sd_Bus_Get_Bus_Id (Bus : access Sd_Bus; Id : Systemd.Id128.Id128_T) return Int  -- /usr/include/systemd/sd-bus.h:181
   ;

   function Sd_Bus_Get_Scope (Bus : access Sd_Bus; Scope : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:182
   ;

   function Sd_Bus_Get_Tid (Bus : access Sd_Bus; Tid : access Int) return Int  -- /usr/include/systemd/sd-bus.h:183
   ;

   function Sd_Bus_Get_Owner_Creds
     (Bus        : access Sd_Bus;
      Creds_Mask : Unsigned_Long;
      Ret        : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:184
   ;

   function Sd_Bus_Send
     (Bus    : access Sd_Bus;
      M      : access Sd_Bus_Message;
      Cookie : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:186
   ;

   function Sd_Bus_Send_To
     (Bus         : access Sd_Bus;
      M           : access Sd_Bus_Message;
      Destination : String;
      Cookie      : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:187
   ;

   function Sd_Bus_Call
     (Bus       : access Sd_Bus;
      M         : access Sd_Bus_Message;
      Usec      : Unsigned_Long;
      Ret_Error : access Sd_Bus_Error;
      Reply     : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:188
   ;

   function Sd_Bus_Call_Async
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      M        : access Sd_Bus_Message;
      Callback : Sd_Bus_Message_Handler_T;
      Userdata : System.Address;
      Usec     : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:189
   ;

   function Sd_Bus_Get_Fd (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:191
   ;

   function Sd_Bus_Get_Events (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:192
   ;

   function Sd_Bus_Get_Timeout (Bus : access Sd_Bus; Timeout_Usec : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:193
   ;

   function Sd_Bus_Process (Bus : access Sd_Bus; R : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:194
   ;

   function Sd_Bus_Process_Priority
     (Bus          : access Sd_Bus;
      Max_Priority : Long;
      R            : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:195
   ;

   function Sd_Bus_Wait (Bus : access Sd_Bus; Timeout_Usec : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:196
   ;

   function Sd_Bus_Flush (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:197
   ;

   function Sd_Bus_Get_Current_Slot (Bus : access Sd_Bus) return access Sd_Bus_Slot  -- /usr/include/systemd/sd-bus.h:199
   ;

   function Sd_Bus_Get_Current_Message (Bus : access Sd_Bus) return access Sd_Bus_Message  -- /usr/include/systemd/sd-bus.h:200
   ;

   function Sd_Bus_Get_Current_Handler (Bus : access Sd_Bus) return Sd_Bus_Message_Handler_T  -- /usr/include/systemd/sd-bus.h:201
   ;

   function Sd_Bus_Get_Current_Userdata (Bus : access Sd_Bus) return System.Address  -- /usr/include/systemd/sd-bus.h:202
   ;

   function Sd_Bus_Attach_Event
     (Bus      : access Sd_Bus;
      E        : access Systemd.Event.Sd_Event;
      Priority : Int) return Int  -- /usr/include/systemd/sd-bus.h:204
   ;

   function Sd_Bus_Detach_Event (Bus : access Sd_Bus) return Int  -- /usr/include/systemd/sd-bus.h:205
   ;

   function Sd_Bus_Get_Event (Bus : access Sd_Bus) return access Systemd.Event.Sd_Event  -- /usr/include/systemd/sd-bus.h:206
   ;

   function Sd_Bus_Get_N_Queued_Read (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:208
   ;

   function Sd_Bus_Get_N_Queued_Write (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:209
   ;

   function Sd_Bus_Set_Method_Call_Timeout (Bus : access Sd_Bus; Usec : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:211
   ;

   function Sd_Bus_Get_Method_Call_Timeout (Bus : access Sd_Bus; Ret : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:212
   ;

   function Sd_Bus_Add_Filter
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Callback : Sd_Bus_Message_Handler_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:214
   ;

   function Sd_Bus_Add_Match
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Match    : String;
      Callback : Sd_Bus_Message_Handler_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:215
   ;

   function Sd_Bus_Add_Match_Async
     (Bus              : access Sd_Bus;
      Slot             : System.Address;
      Match            : String;
      Callback         : Sd_Bus_Message_Handler_T;
      Install_Callback : Sd_Bus_Message_Handler_T;
      Userdata         : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:216
   ;

   function Sd_Bus_Add_Object
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Path     : String;
      Callback : Sd_Bus_Message_Handler_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:217
   ;

   function Sd_Bus_Add_Fallback
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Prefix   : String;
      Callback : Sd_Bus_Message_Handler_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:218
   ;

   function Sd_Bus_Add_Object_Vtable
     (Bus         : access Sd_Bus;
      Slot        : System.Address;
      Path        : String;
      C_Interface : String;
      Vtable      : access constant Systemd.Bus.Vtable.Sd_Bus_Vtable;
      Userdata    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:219
   ;

   function Sd_Bus_Add_Fallback_Vtable
     (Bus         : access Sd_Bus;
      Slot        : System.Address;
      Prefix      : String;
      C_Interface : String;
      Vtable      : access constant Systemd.Bus.Vtable.Sd_Bus_Vtable;
      Find        : Sd_Bus_Object_Find_T;
      Userdata    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:220
   ;

   function Sd_Bus_Add_Node_Enumerator
     (Bus      : access Sd_Bus;
      Slot     : System.Address;
      Path     : String;
      Callback : Sd_Bus_Node_Enumerator_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:221
   ;

   function Sd_Bus_Add_Object_Manager
     (Bus  : access Sd_Bus;
      Slot : System.Address;
      Path : String) return Int  -- /usr/include/systemd/sd-bus.h:222
   ;

   -- Slot object
   function Sd_Bus_Slot_Ref (Slot : access Sd_Bus_Slot) return access Sd_Bus_Slot  -- /usr/include/systemd/sd-bus.h:226
   ;

   function Sd_Bus_Slot_Unref (Slot : access Sd_Bus_Slot) return access Sd_Bus_Slot  -- /usr/include/systemd/sd-bus.h:227
   ;

   function Sd_Bus_Slot_Get_Bus (Slot : access Sd_Bus_Slot) return access Sd_Bus  -- /usr/include/systemd/sd-bus.h:229
   ;

   function Sd_Bus_Slot_Get_Userdata (Slot : access Sd_Bus_Slot) return System.Address  -- /usr/include/systemd/sd-bus.h:230
   ;

   function Sd_Bus_Slot_Set_Userdata (Slot : access Sd_Bus_Slot; Userdata : System.Address) return System.Address  -- /usr/include/systemd/sd-bus.h:231
   ;

   function Sd_Bus_Slot_Set_Description (Slot : access Sd_Bus_Slot; Description : String) return Int  -- /usr/include/systemd/sd-bus.h:232
   ;

   function Sd_Bus_Slot_Get_Description (Slot : access Sd_Bus_Slot; Description : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:233
   ;

   function Sd_Bus_Slot_Get_Floating (Slot : access Sd_Bus_Slot) return Int  -- /usr/include/systemd/sd-bus.h:234
   ;

   function Sd_Bus_Slot_Set_Floating (Slot : access Sd_Bus_Slot; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:235
   ;

   function Sd_Bus_Slot_Set_Destroy_Callback (S : access Sd_Bus_Slot; Callback : Sd_Bus_Destroy_T) return Int  -- /usr/include/systemd/sd-bus.h:236
   ;

   function Sd_Bus_Slot_Get_Destroy_Callback (S : access Sd_Bus_Slot; Callback : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:237
   ;

   function Sd_Bus_Slot_Get_Current_Message (Slot : access Sd_Bus_Slot) return access Sd_Bus_Message  -- /usr/include/systemd/sd-bus.h:239
   ;

   function Sd_Bus_Slot_Get_Current_Handler (Slot : access Sd_Bus_Slot) return Sd_Bus_Message_Handler_T  -- /usr/include/systemd/sd-bus.h:240
   ;

   function Sd_Bus_Slot_Get_Current_Userdata (Slot : access Sd_Bus_Slot) return System.Address  -- /usr/include/systemd/sd-bus.h:241
   ;

   -- Message object
   function Sd_Bus_Message_New
     (Bus    : access Sd_Bus;
      M      : System.Address;
      C_Type : Unsigned_Char) return Int  -- /usr/include/systemd/sd-bus.h:245
   ;

   function Sd_Bus_Message_New_Signal
     (Bus         : access Sd_Bus;
      M           : System.Address;
      Path        : String;
      C_Interface : String;
      Member      : String) return Int  -- /usr/include/systemd/sd-bus.h:246
   ;

   function Sd_Bus_Message_New_Method_Call
     (Bus         : access Sd_Bus;
      M           : System.Address;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String) return Int  -- /usr/include/systemd/sd-bus.h:247
   ;

   function Sd_Bus_Message_New_Method_Return (Call : access Sd_Bus_Message; M : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:248
   ;

   function Sd_Bus_Message_New_Method_Error
     (Call : access Sd_Bus_Message;
      M    : System.Address;
      E    : access constant Sd_Bus_Error) return Int  -- /usr/include/systemd/sd-bus.h:249
   ;

   function Sd_Bus_Message_New_Method_Errorf
     (Call   : access Sd_Bus_Message;
      M      : System.Address;
      Name   : String;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:250
   ;

   function Sd_Bus_Message_New_Method_Errno
     (Call  : access Sd_Bus_Message;
      M     : System.Address;
      Error : Int;
      E     : access constant Sd_Bus_Error) return Int  -- /usr/include/systemd/sd-bus.h:251
   ;

   function Sd_Bus_Message_New_Method_Errnof
     (Call   : access Sd_Bus_Message;
      M      : System.Address;
      Error  : Int;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:252
   ;

   function Sd_Bus_Message_Ref (M : access Sd_Bus_Message) return access Sd_Bus_Message  -- /usr/include/systemd/sd-bus.h:254
   ;

   function Sd_Bus_Message_Unref (M : access Sd_Bus_Message) return access Sd_Bus_Message  -- /usr/include/systemd/sd-bus.h:255
   ;

   function Sd_Bus_Message_Seal
     (M            : access Sd_Bus_Message;
      Cookie       : Unsigned_Long;
      Timeout_Usec : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:257
   ;

   function Sd_Bus_Message_Get_Type (M : access Sd_Bus_Message; C_Type : access Unsigned_Char) return Int  -- /usr/include/systemd/sd-bus.h:259
   ;

   function Sd_Bus_Message_Get_Cookie (M : access Sd_Bus_Message; Cookie : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:260
   ;

   function Sd_Bus_Message_Get_Reply_Cookie (M : access Sd_Bus_Message; Cookie : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:261
   ;

   function Sd_Bus_Message_Get_Priority (M : access Sd_Bus_Message; Priority : access Long) return Int  -- /usr/include/systemd/sd-bus.h:262
   ;

   function Sd_Bus_Message_Get_Expect_Reply (M : access Sd_Bus_Message) return Int  -- /usr/include/systemd/sd-bus.h:264
   ;

   function Sd_Bus_Message_Get_Auto_Start (M : access Sd_Bus_Message) return Int  -- /usr/include/systemd/sd-bus.h:265
   ;

   function Sd_Bus_Message_Get_Allow_Interactive_Authorization (M : access Sd_Bus_Message) return Int  -- /usr/include/systemd/sd-bus.h:266
   ;

   function Sd_Bus_Message_Get_Signature (M : access Sd_Bus_Message; Complete : Int) return String  -- /usr/include/systemd/sd-bus.h:268
   ;

   function Sd_Bus_Message_Get_Path (M : access Sd_Bus_Message) return String  -- /usr/include/systemd/sd-bus.h:269
   ;

   function Sd_Bus_Message_Get_Interface (M : access Sd_Bus_Message) return String  -- /usr/include/systemd/sd-bus.h:270
   ;

   function Sd_Bus_Message_Get_Member (M : access Sd_Bus_Message) return String  -- /usr/include/systemd/sd-bus.h:271
   ;

   function Sd_Bus_Message_Get_Destination (M : access Sd_Bus_Message) return String  -- /usr/include/systemd/sd-bus.h:272
   ;

   function Sd_Bus_Message_Get_Sender (M : access Sd_Bus_Message) return String  -- /usr/include/systemd/sd-bus.h:273
   ;

   function Sd_Bus_Message_Get_Error (M : access Sd_Bus_Message) return access constant Sd_Bus_Error  -- /usr/include/systemd/sd-bus.h:274
   ;

   function Sd_Bus_Message_Get_Errno (M : access Sd_Bus_Message) return Int  -- /usr/include/systemd/sd-bus.h:275
   ;

   function Sd_Bus_Message_Get_Monotonic_Usec (M : access Sd_Bus_Message; Usec : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:277
   ;

   function Sd_Bus_Message_Get_Realtime_Usec (M : access Sd_Bus_Message; Usec : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:278
   ;

   function Sd_Bus_Message_Get_Seqnum (M : access Sd_Bus_Message; Seqnum : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:279
   ;

   function Sd_Bus_Message_Get_Bus (M : access Sd_Bus_Message) return access Sd_Bus  -- /usr/include/systemd/sd-bus.h:281
   ;

   -- do not unref the result
   function Sd_Bus_Message_Get_Creds (M : access Sd_Bus_Message) return access Sd_Bus_Creds  -- /usr/include/systemd/sd-bus.h:282
   ;

   function Sd_Bus_Message_Is_Signal
     (M           : access Sd_Bus_Message;
      C_Interface : String;
      Member      : String) return Int  -- /usr/include/systemd/sd-bus.h:284
   ;

   function Sd_Bus_Message_Is_Method_Call
     (M           : access Sd_Bus_Message;
      C_Interface : String;
      Member      : String) return Int  -- /usr/include/systemd/sd-bus.h:285
   ;

   function Sd_Bus_Message_Is_Method_Error (M : access Sd_Bus_Message; Name : String) return Int  -- /usr/include/systemd/sd-bus.h:286
   ;

   function Sd_Bus_Message_Is_Empty (M : access Sd_Bus_Message) return Int  -- /usr/include/systemd/sd-bus.h:287
   ;

   function Sd_Bus_Message_Has_Signature (M : access Sd_Bus_Message; Signature : String) return Int  -- /usr/include/systemd/sd-bus.h:288
   ;

   function Sd_Bus_Message_Set_Expect_Reply (M : access Sd_Bus_Message; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:290
   ;

   function Sd_Bus_Message_Set_Auto_Start (M : access Sd_Bus_Message; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:291
   ;

   function Sd_Bus_Message_Set_Allow_Interactive_Authorization (M : access Sd_Bus_Message; B : Int) return Int  -- /usr/include/systemd/sd-bus.h:292
   ;

   function Sd_Bus_Message_Set_Destination (M : access Sd_Bus_Message; Destination : String) return Int  -- /usr/include/systemd/sd-bus.h:294
   ;

   function Sd_Bus_Message_Set_Sender (M : access Sd_Bus_Message; Sender : String) return Int  -- /usr/include/systemd/sd-bus.h:295
   ;

   function Sd_Bus_Message_Set_Priority (M : access Sd_Bus_Message; Priority : Long) return Int  -- /usr/include/systemd/sd-bus.h:296
   ;

   function Sd_Bus_Message_Append (M : access Sd_Bus_Message; Types : String  -- , ...
                                  ) return Int  -- /usr/include/systemd/sd-bus.h:298
   ;

   function Sd_Bus_Message_Appendv
     (M     : access Sd_Bus_Message;
      Types : String;
      Ap    : access System.Address) return Int  -- /usr/include/systemd/sd-bus.h:299
   ;

   function Sd_Bus_Message_Append_Basic
     (M      : access Sd_Bus_Message;
      C_Type : Char;
      P      : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:300
   ;

   function Sd_Bus_Message_Append_Array
     (M      : access Sd_Bus_Message;
      C_Type : Char;
      Ptr    : System.Address;
      Size   : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:301
   ;

   function Sd_Bus_Message_Append_Array_Space
     (M      : access Sd_Bus_Message;
      C_Type : Char;
      Size   : Unsigned_Long;
      Ptr    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:302
   ;

   function Sd_Bus_Message_Append_Array_Iovec
     (M      : access Sd_Bus_Message;
      C_Type : Char;
      Iov    : access constant System.Address;
      N      : Unsigned) return Int  -- /usr/include/systemd/sd-bus.h:303
   ;

   function Sd_Bus_Message_Append_Array_Memfd
     (M      : access Sd_Bus_Message;
      C_Type : Char;
      Memfd  : Int;
      Offset : Unsigned_Long;
      Size   : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:304
   ;

   function Sd_Bus_Message_Append_String_Space
     (M    : access Sd_Bus_Message;
      Size : Unsigned_Long;
      S    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:305
   ;

   function Sd_Bus_Message_Append_String_Iovec
     (M   : access Sd_Bus_Message;
      Iov : access constant System.Address;
      N   : Unsigned) return Int  -- /usr/include/systemd/sd-bus.h:306
   ;

   function Sd_Bus_Message_Append_String_Memfd
     (M      : access Sd_Bus_Message;
      Memfd  : Int;
      Offset : Unsigned_Long;
      Size   : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:307
   ;

   function Sd_Bus_Message_Append_Strv (M : access Sd_Bus_Message; L : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:308
   ;

   function Sd_Bus_Message_Open_Container
     (M        : access Sd_Bus_Message;
      C_Type   : Char;
      Contents : String) return Int  -- /usr/include/systemd/sd-bus.h:309
   ;

   function Sd_Bus_Message_Close_Container (M : access Sd_Bus_Message) return Int  -- /usr/include/systemd/sd-bus.h:310
   ;

   function Sd_Bus_Message_Copy
     (M      : access Sd_Bus_Message;
      Source : access Sd_Bus_Message;
      C_All  : Int) return Int  -- /usr/include/systemd/sd-bus.h:311
   ;

   function Sd_Bus_Message_Read (M : access Sd_Bus_Message; Types : String  -- , ...
                                ) return Int  -- /usr/include/systemd/sd-bus.h:313
   ;

   function Sd_Bus_Message_Readv
     (M     : access Sd_Bus_Message;
      Types : String;
      Ap    : access System.Address) return Int  -- /usr/include/systemd/sd-bus.h:314
   ;

   function Sd_Bus_Message_Read_Basic
     (M      : access Sd_Bus_Message;
      C_Type : Char;
      P      : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:315
   ;

   function Sd_Bus_Message_Read_Array
     (M      : access Sd_Bus_Message;
      C_Type : Char;
      Ptr    : System.Address;
      Size   : access Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:316
   ;

   -- free the result!
   function Sd_Bus_Message_Read_Strv (M : access Sd_Bus_Message; L : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:317
   ;

   function Sd_Bus_Message_Skip (M : access Sd_Bus_Message; Types : String) return Int  -- /usr/include/systemd/sd-bus.h:318
   ;

   function Sd_Bus_Message_Enter_Container
     (M        : access Sd_Bus_Message;
      C_Type   : Char;
      Contents : String) return Int  -- /usr/include/systemd/sd-bus.h:319
   ;

   function Sd_Bus_Message_Exit_Container (M : access Sd_Bus_Message) return Int  -- /usr/include/systemd/sd-bus.h:320
   ;

   function Sd_Bus_Message_Peek_Type
     (M        : access Sd_Bus_Message;
      C_Type   : String;
      Contents : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:321
   ;

   function Sd_Bus_Message_Verify_Type
     (M        : access Sd_Bus_Message;
      C_Type   : Char;
      Contents : String) return Int  -- /usr/include/systemd/sd-bus.h:322
   ;

   function Sd_Bus_Message_At_End (M : access Sd_Bus_Message; Complete : Int) return Int  -- /usr/include/systemd/sd-bus.h:323
   ;

   function Sd_Bus_Message_Rewind (M : access Sd_Bus_Message; Complete : Int) return Int  -- /usr/include/systemd/sd-bus.h:324
   ;

   -- Bus management
   function Sd_Bus_Get_Unique_Name (Bus : access Sd_Bus; Unique : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:328
   ;

   function Sd_Bus_Request_Name
     (Bus   : access Sd_Bus;
      Name  : String;
      Flags : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:329
   ;

   function Sd_Bus_Request_Name_Async
     (Bus      : access Sd_Bus;
      Ret_Slot : System.Address;
      Name     : String;
      Flags    : Unsigned_Long;
      Callback : Sd_Bus_Message_Handler_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:330
   ;

   function Sd_Bus_Release_Name (Bus : access Sd_Bus; Name : String) return Int  -- /usr/include/systemd/sd-bus.h:331
   ;

   function Sd_Bus_Release_Name_Async
     (Bus      : access Sd_Bus;
      Ret_Slot : System.Address;
      Name     : String;
      Callback : Sd_Bus_Message_Handler_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:332
   ;

   -- free the results
   function Sd_Bus_List_Names
     (Bus         : access Sd_Bus;
      Acquired    : System.Address;
      Activatable : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:333
   ;

   -- unref the result!
   function Sd_Bus_Get_Name_Creds
     (Bus   : access Sd_Bus;
      Name  : String;
      Mask  : Unsigned_Long;
      Creds : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:334
   ;

   function Sd_Bus_Get_Name_Machine_Id
     (Bus     : access Sd_Bus;
      Name    : String;
      Machine : Systemd.Id128.Id128_T) return Int  -- /usr/include/systemd/sd-bus.h:335
   ;

   -- Convenience calls
   function Sd_Bus_Call_Method
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Sd_Bus_Error;
      Reply       : System.Address;
      Types       : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:339
   ;

   function Sd_Bus_Call_Method_Async
     (Bus         : access Sd_Bus;
      Slot        : System.Address;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Callback    : Sd_Bus_Message_Handler_T;
      Userdata    : System.Address;
      Types       : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:340
   ;

   function Sd_Bus_Get_Property
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Sd_Bus_Error;
      Reply       : System.Address;
      C_Type      : String) return Int  -- /usr/include/systemd/sd-bus.h:341
   ;

   function Sd_Bus_Get_Property_Trivial
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Sd_Bus_Error;
      C_Type      : Char;
      Ret_Ptr     : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:342
   ;

   -- free the result!
   function Sd_Bus_Get_Property_String
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Sd_Bus_Error;
      Ret         : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:343
   ;

   -- free the result!
   function Sd_Bus_Get_Property_Strv
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Sd_Bus_Error;
      Ret         : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:344
   ;

   function Sd_Bus_Set_Property
     (Bus         : access Sd_Bus;
      Destination : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Ret_Error   : access Sd_Bus_Error;
      C_Type      : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:345
   ;

   function Sd_Bus_Reply_Method_Return (Call : access Sd_Bus_Message; Types : String  -- , ...
                                       ) return Int  -- /usr/include/systemd/sd-bus.h:347
   ;

   function Sd_Bus_Reply_Method_Error (Call : access Sd_Bus_Message; E : access constant Sd_Bus_Error) return Int  -- /usr/include/systemd/sd-bus.h:348
   ;

   function Sd_Bus_Reply_Method_Errorf
     (Call   : access Sd_Bus_Message;
      Name   : String;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:349
   ;

   function Sd_Bus_Reply_Method_Errno
     (Call  : access Sd_Bus_Message;
      Error : Int;
      E     : access constant Sd_Bus_Error) return Int  -- /usr/include/systemd/sd-bus.h:350
   ;

   function Sd_Bus_Reply_Method_Errnof
     (Call   : access Sd_Bus_Message;
      Error  : Int;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:351
   ;

   function Sd_Bus_Emit_Signal
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Types       : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:353
   ;

   function Sd_Bus_Emit_Properties_Changed_Strv
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String;
      Names       : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:355
   ;

   function Sd_Bus_Emit_Properties_Changed
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String;
      Name        : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:356
   ;

   function Sd_Bus_Emit_Object_Added (Bus : access Sd_Bus; Path : String) return Int  -- /usr/include/systemd/sd-bus.h:358
   ;

   function Sd_Bus_Emit_Object_Removed (Bus : access Sd_Bus; Path : String) return Int  -- /usr/include/systemd/sd-bus.h:359
   ;

   function Sd_Bus_Emit_Interfaces_Added_Strv
     (Bus        : access Sd_Bus;
      Path       : String;
      Interfaces : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:360
   ;

   function Sd_Bus_Emit_Interfaces_Added
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:361
   ;

   function Sd_Bus_Emit_Interfaces_Removed_Strv
     (Bus        : access Sd_Bus;
      Path       : String;
      Interfaces : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:362
   ;

   function Sd_Bus_Emit_Interfaces_Removed
     (Bus         : access Sd_Bus;
      Path        : String;
      C_Interface : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:363
   ;

   function Sd_Bus_Query_Sender_Creds
     (Call  : access Sd_Bus_Message;
      Mask  : Unsigned_Long;
      Creds : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:365
   ;

   function Sd_Bus_Query_Sender_Privilege (Call : access Sd_Bus_Message; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:366
   ;

   function Sd_Bus_Match_Signal
     (Bus         : access Sd_Bus;
      Ret         : System.Address;
      Sender      : String;
      Path        : String;
      C_Interface : String;
      Member      : String;
      Callback    : Sd_Bus_Message_Handler_T;
      Userdata    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:368
   ;

   function Sd_Bus_Match_Signal_Async
     (Bus            : access Sd_Bus;
      Ret            : System.Address;
      Sender         : String;
      Path           : String;
      C_Interface    : String;
      Member         : String;
      Match_Callback : Sd_Bus_Message_Handler_T;
      Add_Callback   : Sd_Bus_Message_Handler_T;
      Userdata       : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:369
   ;

   -- Credential handling
   function Sd_Bus_Creds_New_From_Pid
     (Ret        : System.Address;
      Pid        : Int;
      Creds_Mask : Unsigned_Long) return Int  -- /usr/include/systemd/sd-bus.h:373
   ;

   function Sd_Bus_Creds_Ref (C : access Sd_Bus_Creds) return access Sd_Bus_Creds  -- /usr/include/systemd/sd-bus.h:374
   ;

   function Sd_Bus_Creds_Unref (C : access Sd_Bus_Creds) return access Sd_Bus_Creds  -- /usr/include/systemd/sd-bus.h:375
   ;

   function Sd_Bus_Creds_Get_Mask (C : access constant Sd_Bus_Creds) return Unsigned_Long  -- /usr/include/systemd/sd-bus.h:376
   ;

   function Sd_Bus_Creds_Get_Augmented_Mask (C : access constant Sd_Bus_Creds) return Unsigned_Long  -- /usr/include/systemd/sd-bus.h:377
   ;

   function Sd_Bus_Creds_Get_Pid (C : access Sd_Bus_Creds; Pid : access Int) return Int;

   function Sd_Bus_Creds_Get_Ppid (C : access Sd_Bus_Creds; Ppid : access Int) return Int;

   function Sd_Bus_Creds_Get_Tid (C : access Sd_Bus_Creds; Tid : access Int) return Int;

   function Sd_Bus_Creds_Get_Uid (C : access Sd_Bus_Creds; Uid : access Uid_T) return Int;

   function Sd_Bus_Creds_Get_Euid (C : access Sd_Bus_Creds; Euid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:383
   ;

   function Sd_Bus_Creds_Get_Suid (C : access Sd_Bus_Creds; Suid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:384
   ;

   function Sd_Bus_Creds_Get_Fsuid (C : access Sd_Bus_Creds; Fsuid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:385
   ;

   function Sd_Bus_Creds_Get_Gid (C : access Sd_Bus_Creds; Gid : access Gid_T) return Int  -- /usr/include/systemd/sd-bus.h:386
   ;

   function Sd_Bus_Creds_Get_Egid (C : access Sd_Bus_Creds; Egid : access Gid_T) return Int  -- /usr/include/systemd/sd-bus.h:387
   ;

   function Sd_Bus_Creds_Get_Sgid (C : access Sd_Bus_Creds; Sgid : access Gid_T) return Int  -- /usr/include/systemd/sd-bus.h:388
   ;

   function Sd_Bus_Creds_Get_Fsgid (C : access Sd_Bus_Creds; Fsgid : access Gid_T) return Int  -- /usr/include/systemd/sd-bus.h:389
   ;

   function Sd_Bus_Creds_Get_Supplementary_Gids (C : access Sd_Bus_Creds; Gids : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:390
   ;

   function Sd_Bus_Creds_Get_Comm (C : access Sd_Bus_Creds; Comm : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:391
   ;

   function Sd_Bus_Creds_Get_Tid_Comm (C : access Sd_Bus_Creds; Comm : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:392
   ;

   function Sd_Bus_Creds_Get_Exe (C : access Sd_Bus_Creds; Exe : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:393
   ;

   function Sd_Bus_Creds_Get_Cmdline (C : access Sd_Bus_Creds; Cmdline : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:394
   ;

   function Sd_Bus_Creds_Get_Cgroup (C : access Sd_Bus_Creds; Cgroup : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:395
   ;

   function Sd_Bus_Creds_Get_Unit (C : access Sd_Bus_Creds; Unit : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:396
   ;

   function Sd_Bus_Creds_Get_Slice (C : access Sd_Bus_Creds; Slice : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:397
   ;

   function Sd_Bus_Creds_Get_User_Unit (C : access Sd_Bus_Creds; Unit : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:398
   ;

   function Sd_Bus_Creds_Get_User_Slice (C : access Sd_Bus_Creds; Slice : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:399
   ;

   function Sd_Bus_Creds_Get_Session (C : access Sd_Bus_Creds; Session : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:400
   ;

   function Sd_Bus_Creds_Get_Owner_Uid (C : access Sd_Bus_Creds; Uid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:401
   ;

   function Sd_Bus_Creds_Has_Effective_Cap (C : access Sd_Bus_Creds; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:402
   ;

   function Sd_Bus_Creds_Has_Permitted_Cap (C : access Sd_Bus_Creds; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:403
   ;

   function Sd_Bus_Creds_Has_Inheritable_Cap (C : access Sd_Bus_Creds; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:404
   ;

   function Sd_Bus_Creds_Has_Bounding_Cap (C : access Sd_Bus_Creds; Capability : Int) return Int  -- /usr/include/systemd/sd-bus.h:405
   ;

   function Sd_Bus_Creds_Get_Selinux_Context (C : access Sd_Bus_Creds; Context : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:406
   ;

   function Sd_Bus_Creds_Get_Audit_Session_Id (C : access Sd_Bus_Creds; Sessionid : access Unsigned) return Int  -- /usr/include/systemd/sd-bus.h:407
   ;

   function Sd_Bus_Creds_Get_Audit_Login_Uid (C : access Sd_Bus_Creds; Loginuid : access Uid_T) return Int  -- /usr/include/systemd/sd-bus.h:408
   ;

   function Sd_Bus_Creds_Get_Tty (C : access Sd_Bus_Creds; Tty : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:409
   ;

   function Sd_Bus_Creds_Get_Unique_Name (C : access Sd_Bus_Creds; Name : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:410
   ;

   function Sd_Bus_Creds_Get_Well_Known_Names (C : access Sd_Bus_Creds; Names : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:411
   ;

   function Sd_Bus_Creds_Get_Description (C : access Sd_Bus_Creds; Name : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:412
   ;

   -- Error structures
   procedure Sd_Bus_Error_Free (E : access Sd_Bus_Error)  -- /usr/include/systemd/sd-bus.h:419
   ;

   function Sd_Bus_Error_Set
     (E       : access Sd_Bus_Error;
      Name    : String;
      Message : String) return Int  -- /usr/include/systemd/sd-bus.h:420
   ;

   function Sd_Bus_Error_Setf
     (E      : access Sd_Bus_Error;
      Name   : String;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:421
   ;

   function Sd_Bus_Error_Set_Const
     (E       : access Sd_Bus_Error;
      Name    : String;
      Message : String) return Int  -- /usr/include/systemd/sd-bus.h:422
   ;

   function Sd_Bus_Error_Set_Errno (E : access Sd_Bus_Error; Error : Int) return Int  -- /usr/include/systemd/sd-bus.h:423
   ;

   function Sd_Bus_Error_Set_Errnof
     (E      : access Sd_Bus_Error;
      Error  : Int;
      Format : String  -- , ...
     ) return Int  -- /usr/include/systemd/sd-bus.h:424
   ;

   function Sd_Bus_Error_Set_Errnofv
     (E      : access Sd_Bus_Error;
      Error  : Int;
      Format : String;
      Ap     : access System.Address) return Int  -- /usr/include/systemd/sd-bus.h:425
   ;

   function Sd_Bus_Error_Get_Errno (E : access constant Sd_Bus_Error) return Int  -- /usr/include/systemd/sd-bus.h:426
   ;

   function Sd_Bus_Error_Copy (Dest : access Sd_Bus_Error; E : access constant Sd_Bus_Error) return Int  -- /usr/include/systemd/sd-bus.h:427
   ;

   function Sd_Bus_Error_Move (Dest : access Sd_Bus_Error; E : access Sd_Bus_Error) return Int  -- /usr/include/systemd/sd-bus.h:428
   ;

   function Sd_Bus_Error_Is_Set (E : access constant Sd_Bus_Error) return Int  -- /usr/include/systemd/sd-bus.h:429
   ;

   function Sd_Bus_Error_Has_Name (E : access constant Sd_Bus_Error; Name : String) return Int  -- /usr/include/systemd/sd-bus.h:430
   ;

   function Sd_Bus_Error_Add_Map (Map : access constant Sd_Bus_Error_Map) return Int  -- /usr/include/systemd/sd-bus.h:443
   ;

   -- Auxiliary macros
   -- Label escaping
   function Sd_Bus_Path_Encode
     (Prefix      : String;
      External_Id : String;
      Ret_Path    : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:461
   ;

   function Sd_Bus_Path_Encode_Many (C_Out : System.Address; Path_Template : String  -- , ...
                                    ) return Int  -- /usr/include/systemd/sd-bus.h:462
   ;

   function Sd_Bus_Path_Decode
     (Path            : String;
      Prefix          : String;
      Ret_External_Id : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:463
   ;

   function Sd_Bus_Path_Decode_Many (Path : String; Path_Template : String  -- , ...
                                    ) return Int  -- /usr/include/systemd/sd-bus.h:464
   ;

   -- Tracking peers

   function Sd_Bus_Track_New
     (Bus      : access Sd_Bus;
      Track    : System.Address;
      Handler  : Sd_Bus_Track_Handler_T;
      Userdata : System.Address) return Int  -- /usr/include/systemd/sd-bus.h:468
   ;

   function Sd_Bus_Track_Ref (Track : access Sd_Bus_Track) return access Sd_Bus_Track  -- /usr/include/systemd/sd-bus.h:469
   ;

   function Sd_Bus_Track_Unref (Track : access Sd_Bus_Track) return access Sd_Bus_Track  -- /usr/include/systemd/sd-bus.h:470
   ;

   function Sd_Bus_Track_Get_Bus (Track : access Sd_Bus_Track) return access Sd_Bus  -- /usr/include/systemd/sd-bus.h:472
   ;

   function Sd_Bus_Track_Get_Userdata (Track : access Sd_Bus_Track) return System.Address  -- /usr/include/systemd/sd-bus.h:473
   ;

   function Sd_Bus_Track_Set_Userdata (Track : access Sd_Bus_Track; Userdata : System.Address) return System.Address  -- /usr/include/systemd/sd-bus.h:474
   ;

   function Sd_Bus_Track_Add_Sender (Track : access Sd_Bus_Track; M : access Sd_Bus_Message) return Int  -- /usr/include/systemd/sd-bus.h:476
   ;

   function Sd_Bus_Track_Remove_Sender (Track : access Sd_Bus_Track; M : access Sd_Bus_Message) return Int  -- /usr/include/systemd/sd-bus.h:477
   ;

   function Sd_Bus_Track_Add_Name (Track : access Sd_Bus_Track; Name : String) return Int;

   function Sd_Bus_Track_Remove_Name (Track : access Sd_Bus_Track; Name : String) return Int;

   function Sd_Bus_Track_Set_Recursive (Track : access Sd_Bus_Track; B : Int) return Int;

   function Sd_Bus_Track_Get_Recursive (Track : access Sd_Bus_Track) return Int;

   function Sd_Bus_Track_Count (Track : access Sd_Bus_Track) return Unsigned;

   function Sd_Bus_Track_Count_Sender (Track : access Sd_Bus_Track; M : access Sd_Bus_Message) return Int;

   function Sd_Bus_Track_Count_Name (Track : access Sd_Bus_Track; Name : String) return Int;

   function Sd_Bus_Track_Contains (Track : access Sd_Bus_Track; Name : String) return String;

   function Sd_Bus_Track_First (Track : access Sd_Bus_Track) return String;

   function Sd_Bus_Track_Next (Track : access Sd_Bus_Track) return String;

   function Sd_Bus_Track_Set_Destroy_Callback (S : access Sd_Bus_Track; Callback : Sd_Bus_Destroy_T) return Int;

   function Sd_Bus_Track_Get_Destroy_Callback (S : access Sd_Bus_Track; Ret : System.Address) return Int;

   -- Define helpers so that __attribute__((cleanup(sd_bus_unrefp))) and similar may be used.
   procedure Sd_Bus_Unrefp (P : System.Address);

   procedure Sd_Bus_Close_Unrefp (P : System.Address);

   procedure Sd_Bus_Flush_Close_Unrefp (P : System.Address);

   procedure Sd_Bus_Slot_Unrefp (P : System.Address);

   procedure Sd_Bus_Message_Unrefp (P : System.Address);

   procedure Sd_Bus_Creds_Unrefp (P : System.Address);

   procedure Sd_Bus_Track_Unrefp (P : System.Address);

end Systemd.Bus;
