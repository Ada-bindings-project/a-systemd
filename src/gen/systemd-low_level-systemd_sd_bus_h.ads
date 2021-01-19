pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with Systemd.Low_Level.systemd_usd_common_h;
with Systemd.Low_Level.systemd_sd_id128_h;



limited with Systemd.Low_Level.systemd_sd_event_h;
limited with Systemd.Low_Level.systemd_sd_bus_vtable_h;



package Systemd.Low_Level.systemd_sd_bus_h is

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
   type sd_bus is null record;   -- incomplete struct

   type sd_bus_message is null record;   -- incomplete struct

   type sd_bus_slot is null record;   -- incomplete struct

   type sd_bus_creds is null record;   -- incomplete struct

   type sd_bus_track is null record;   -- incomplete struct

   --  skipped anonymous struct anon_53

   type sd_bus_error is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus.h:45
      message : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus.h:46
      u_need_free : aliased int;  -- /usr/include/systemd/sd-bus.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/systemd/sd-bus.h:48

   --  skipped anonymous struct anon_54

   type sd_bus_error_map is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus.h:51
      code : aliased int;  -- /usr/include/systemd/sd-bus.h:52
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/systemd/sd-bus.h:53

  -- Flags  
  -- special flag, if on sd-bus will augment creds struct, in a potentially race-full way.  
  -- SPDX-License-Identifier: LGPL-2.1+  
   type sd_bus_message_handler_t is access function
        (arg1 : access sd_bus_message;
         arg2 : System.Address;
         arg3 : access sd_bus_error) return int
   with Convention => C;  -- /usr/include/systemd/sd-bus.h:104

   type sd_bus_property_get_t is access function
        (arg1 : access sd_bus;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : Interfaces.C.Strings.chars_ptr;
         arg5 : access sd_bus_message;
         arg6 : System.Address;
         arg7 : access sd_bus_error) return int
   with Convention => C;  -- /usr/include/systemd/sd-bus.h:105

   type sd_bus_property_set_t is access function
        (arg1 : access sd_bus;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : Interfaces.C.Strings.chars_ptr;
         arg5 : access sd_bus_message;
         arg6 : System.Address;
         arg7 : access sd_bus_error) return int
   with Convention => C;  -- /usr/include/systemd/sd-bus.h:106

   type sd_bus_object_find_t is access function
        (arg1 : access sd_bus;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : System.Address;
         arg5 : System.Address;
         arg6 : access sd_bus_error) return int
   with Convention => C;  -- /usr/include/systemd/sd-bus.h:107

   type sd_bus_node_enumerator_t is access function
        (arg1 : access sd_bus;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : System.Address;
         arg4 : System.Address;
         arg5 : access sd_bus_error) return int
   with Convention => C;  -- /usr/include/systemd/sd-bus.h:108

   type sd_bus_track_handler_t is access function (arg1 : access sd_bus_track; arg2 : System.Address) return int
   with Convention => C;  -- /usr/include/systemd/sd-bus.h:109

   subtype sd_bus_destroy_t is Systemd.Low_Level.systemd_usd_common_h.u_sd_destroy_t;  -- /usr/include/systemd/sd-bus.h:110

  -- Connections  
   function sd_bus_default (ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_default";

   function sd_bus_default_user (ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_default_user";

   function sd_bus_default_system (ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_default_system";

   function sd_bus_open (ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_open";

   function sd_bus_open_with_description (ret : System.Address; description : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_open_with_description";

   function sd_bus_open_user (ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_open_user";

   function sd_bus_open_user_with_description (ret : System.Address; description : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_open_user_with_description";

   function sd_bus_open_system (ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_open_system";

   function sd_bus_open_system_with_description (ret : System.Address; description : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_open_system_with_description";

   function sd_bus_open_system_remote (ret : System.Address; host : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_open_system_remote";

   function sd_bus_open_system_machine (ret : System.Address; machine : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_open_system_machine";

   function sd_bus_new (ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_new";

   function sd_bus_set_address (bus : access sd_bus; address : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_address";

   function sd_bus_set_fd
     (bus : access sd_bus;
      input_fd : int;
      output_fd : int) return int  -- /usr/include/systemd/sd-bus.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_fd";

   function sd_bus_set_exec
     (bus : access sd_bus;
      path : Interfaces.C.Strings.chars_ptr;
      argv : System.Address) return int  -- /usr/include/systemd/sd-bus.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_exec";

   function sd_bus_get_address (bus : access sd_bus; address : System.Address) return int  -- /usr/include/systemd/sd-bus.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_address";

   function sd_bus_set_bus_client (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_bus_client";

   function sd_bus_is_bus_client (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_is_bus_client";

   function sd_bus_set_server
     (bus : access sd_bus;
      b : int;
      bus_id : Systemd.Low_Level.systemd_sd_id128_h.sd_id128_t) return int  -- /usr/include/systemd/sd-bus.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_server";

   function sd_bus_is_server (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_is_server";

   function sd_bus_set_anonymous (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_anonymous";

   function sd_bus_is_anonymous (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_is_anonymous";

   function sd_bus_set_trusted (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_trusted";

   function sd_bus_is_trusted (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_is_trusted";

   function sd_bus_set_monitor (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_monitor";

   function sd_bus_is_monitor (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_is_monitor";

   function sd_bus_set_description (bus : access sd_bus; description : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_description";

   function sd_bus_get_description (bus : access sd_bus; description : System.Address) return int  -- /usr/include/systemd/sd-bus.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_description";

   function sd_bus_negotiate_creds
     (bus : access sd_bus;
      b : int;
      creds_mask : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_negotiate_creds";

   function sd_bus_negotiate_timestamp (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_negotiate_timestamp";

   function sd_bus_negotiate_fds (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_negotiate_fds";

   function sd_bus_can_send (bus : access sd_bus; c_type : char) return int  -- /usr/include/systemd/sd-bus.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_can_send";

   function sd_bus_get_creds_mask (bus : access sd_bus; creds_mask : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_creds_mask";

   function sd_bus_set_allow_interactive_authorization (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_allow_interactive_authorization";

   function sd_bus_get_allow_interactive_authorization (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_allow_interactive_authorization";

   function sd_bus_set_exit_on_disconnect (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_exit_on_disconnect";

   function sd_bus_get_exit_on_disconnect (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_exit_on_disconnect";

   function sd_bus_set_close_on_exit (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_close_on_exit";

   function sd_bus_get_close_on_exit (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_close_on_exit";

   function sd_bus_set_watch_bind (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_watch_bind";

   function sd_bus_get_watch_bind (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_watch_bind";

   function sd_bus_set_connected_signal (bus : access sd_bus; b : int) return int  -- /usr/include/systemd/sd-bus.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_connected_signal";

   function sd_bus_get_connected_signal (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_connected_signal";

   function sd_bus_set_sender (bus : access sd_bus; sender : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_sender";

   function sd_bus_get_sender (bus : access sd_bus; ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_sender";

   function sd_bus_start (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_start";

   function sd_bus_try_close (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_try_close";

   procedure sd_bus_close (bus : access sd_bus)  -- /usr/include/systemd/sd-bus.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_close";

   function sd_bus_ref (bus : access sd_bus) return access sd_bus  -- /usr/include/systemd/sd-bus.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_ref";

   function sd_bus_unref (bus : access sd_bus) return access sd_bus  -- /usr/include/systemd/sd-bus.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_unref";

   function sd_bus_close_unref (bus : access sd_bus) return access sd_bus  -- /usr/include/systemd/sd-bus.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_close_unref";

   function sd_bus_flush_close_unref (bus : access sd_bus) return access sd_bus  -- /usr/include/systemd/sd-bus.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_flush_close_unref";

   procedure sd_bus_default_flush_close  -- /usr/include/systemd/sd-bus.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_default_flush_close";

   function sd_bus_is_open (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_is_open";

   function sd_bus_is_ready (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_is_ready";

   function sd_bus_get_bus_id (bus : access sd_bus; id : access Systemd.Low_Level.systemd_sd_id128_h.sd_id128_t) return int  -- /usr/include/systemd/sd-bus.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_bus_id";

   function sd_bus_get_scope (bus : access sd_bus; scope : System.Address) return int  -- /usr/include/systemd/sd-bus.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_scope";

   function sd_bus_get_tid (bus : access sd_bus; tid : access int) return int  -- /usr/include/systemd/sd-bus.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_tid";

   function sd_bus_get_owner_creds
     (bus : access sd_bus;
      creds_mask : unsigned_long;
      ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_owner_creds";

   function sd_bus_send
     (bus : access sd_bus;
      m : access sd_bus_message;
      cookie : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_send";

   function sd_bus_send_to
     (bus : access sd_bus;
      m : access sd_bus_message;
      destination : Interfaces.C.Strings.chars_ptr;
      cookie : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_send_to";

   function sd_bus_call
     (bus : access sd_bus;
      m : access sd_bus_message;
      usec : unsigned_long;
      ret_error : access sd_bus_error;
      reply : System.Address) return int  -- /usr/include/systemd/sd-bus.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_call";

   function sd_bus_call_async
     (bus : access sd_bus;
      slot : System.Address;
      m : access sd_bus_message;
      callback : sd_bus_message_handler_t;
      userdata : System.Address;
      usec : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_call_async";

   function sd_bus_get_fd (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_fd";

   function sd_bus_get_events (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_events";

   function sd_bus_get_timeout (bus : access sd_bus; timeout_usec : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_timeout";

   function sd_bus_process (bus : access sd_bus; r : System.Address) return int  -- /usr/include/systemd/sd-bus.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_process";

   function sd_bus_process_priority
     (bus : access sd_bus;
      max_priority : long;
      r : System.Address) return int  -- /usr/include/systemd/sd-bus.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_process_priority";

   function sd_bus_wait (bus : access sd_bus; timeout_usec : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_wait";

   function sd_bus_flush (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_flush";

   function sd_bus_get_current_slot (bus : access sd_bus) return access sd_bus_slot  -- /usr/include/systemd/sd-bus.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_current_slot";

   function sd_bus_get_current_message (bus : access sd_bus) return access sd_bus_message  -- /usr/include/systemd/sd-bus.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_current_message";

   function sd_bus_get_current_handler (bus : access sd_bus) return sd_bus_message_handler_t  -- /usr/include/systemd/sd-bus.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_current_handler";

   function sd_bus_get_current_userdata (bus : access sd_bus) return System.Address  -- /usr/include/systemd/sd-bus.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_current_userdata";

   function sd_bus_attach_event
     (bus : access sd_bus;
      e : access Systemd.Low_Level.systemd_sd_event_h.sd_event;
      priority : int) return int  -- /usr/include/systemd/sd-bus.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_attach_event";

   function sd_bus_detach_event (bus : access sd_bus) return int  -- /usr/include/systemd/sd-bus.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_detach_event";

   function sd_bus_get_event (bus : access sd_bus) return access Systemd.Low_Level.systemd_sd_event_h.sd_event  -- /usr/include/systemd/sd-bus.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_event";

   function sd_bus_get_n_queued_read (bus : access sd_bus; ret : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_n_queued_read";

   function sd_bus_get_n_queued_write (bus : access sd_bus; ret : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_n_queued_write";

   function sd_bus_set_method_call_timeout (bus : access sd_bus; usec : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_method_call_timeout";

   function sd_bus_get_method_call_timeout (bus : access sd_bus; ret : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_method_call_timeout";

   function sd_bus_add_filter
     (bus : access sd_bus;
      slot : System.Address;
      callback : sd_bus_message_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_add_filter";

   function sd_bus_add_match
     (bus : access sd_bus;
      slot : System.Address;
      match : Interfaces.C.Strings.chars_ptr;
      callback : sd_bus_message_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_add_match";

   function sd_bus_add_match_async
     (bus : access sd_bus;
      slot : System.Address;
      match : Interfaces.C.Strings.chars_ptr;
      callback : sd_bus_message_handler_t;
      install_callback : sd_bus_message_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_add_match_async";

   function sd_bus_add_object
     (bus : access sd_bus;
      slot : System.Address;
      path : Interfaces.C.Strings.chars_ptr;
      callback : sd_bus_message_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_add_object";

   function sd_bus_add_fallback
     (bus : access sd_bus;
      slot : System.Address;
      prefix : Interfaces.C.Strings.chars_ptr;
      callback : sd_bus_message_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_add_fallback";

   function sd_bus_add_object_vtable
     (bus : access sd_bus;
      slot : System.Address;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      vtable : access constant Systemd.Low_Level.systemd_sd_bus_vtable_h.sd_bus_vtable;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_add_object_vtable";

   function sd_bus_add_fallback_vtable
     (bus : access sd_bus;
      slot : System.Address;
      prefix : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      vtable : access constant Systemd.Low_Level.systemd_sd_bus_vtable_h.sd_bus_vtable;
      find : sd_bus_object_find_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_add_fallback_vtable";

   function sd_bus_add_node_enumerator
     (bus : access sd_bus;
      slot : System.Address;
      path : Interfaces.C.Strings.chars_ptr;
      callback : sd_bus_node_enumerator_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_add_node_enumerator";

   function sd_bus_add_object_manager
     (bus : access sd_bus;
      slot : System.Address;
      path : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_add_object_manager";

  -- Slot object  
   function sd_bus_slot_ref (slot : access sd_bus_slot) return access sd_bus_slot  -- /usr/include/systemd/sd-bus.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_ref";

   function sd_bus_slot_unref (slot : access sd_bus_slot) return access sd_bus_slot  -- /usr/include/systemd/sd-bus.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_unref";

   function sd_bus_slot_get_bus (slot : access sd_bus_slot) return access sd_bus  -- /usr/include/systemd/sd-bus.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_get_bus";

   function sd_bus_slot_get_userdata (slot : access sd_bus_slot) return System.Address  -- /usr/include/systemd/sd-bus.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_get_userdata";

   function sd_bus_slot_set_userdata (slot : access sd_bus_slot; userdata : System.Address) return System.Address  -- /usr/include/systemd/sd-bus.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_set_userdata";

   function sd_bus_slot_set_description (slot : access sd_bus_slot; description : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_set_description";

   function sd_bus_slot_get_description (slot : access sd_bus_slot; description : System.Address) return int  -- /usr/include/systemd/sd-bus.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_get_description";

   function sd_bus_slot_get_floating (slot : access sd_bus_slot) return int  -- /usr/include/systemd/sd-bus.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_get_floating";

   function sd_bus_slot_set_floating (slot : access sd_bus_slot; b : int) return int  -- /usr/include/systemd/sd-bus.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_set_floating";

   function sd_bus_slot_set_destroy_callback (s : access sd_bus_slot; callback : sd_bus_destroy_t) return int  -- /usr/include/systemd/sd-bus.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_set_destroy_callback";

   function sd_bus_slot_get_destroy_callback (s : access sd_bus_slot; callback : System.Address) return int  -- /usr/include/systemd/sd-bus.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_get_destroy_callback";

   function sd_bus_slot_get_current_message (slot : access sd_bus_slot) return access sd_bus_message  -- /usr/include/systemd/sd-bus.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_get_current_message";

   function sd_bus_slot_get_current_handler (slot : access sd_bus_slot) return sd_bus_message_handler_t  -- /usr/include/systemd/sd-bus.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_get_current_handler";

   function sd_bus_slot_get_current_userdata (slot : access sd_bus_slot) return System.Address  -- /usr/include/systemd/sd-bus.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_get_current_userdata";

  -- Message object  
   function sd_bus_message_new
     (bus : access sd_bus;
      m : System.Address;
      c_type : unsigned_char) return int  -- /usr/include/systemd/sd-bus.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_new";

   function sd_bus_message_new_signal
     (bus : access sd_bus;
      m : System.Address;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_new_signal";

   function sd_bus_message_new_method_call
     (bus : access sd_bus;
      m : System.Address;
      destination : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_new_method_call";

   function sd_bus_message_new_method_return (call : access sd_bus_message; m : System.Address) return int  -- /usr/include/systemd/sd-bus.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_new_method_return";

   function sd_bus_message_new_method_error
     (call : access sd_bus_message;
      m : System.Address;
      e : access constant sd_bus_error) return int  -- /usr/include/systemd/sd-bus.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_new_method_error";

   function sd_bus_message_new_method_errorf
     (call : access sd_bus_message;
      m : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_new_method_errorf";

   function sd_bus_message_new_method_errno
     (call : access sd_bus_message;
      m : System.Address;
      error : int;
      e : access constant sd_bus_error) return int  -- /usr/include/systemd/sd-bus.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_new_method_errno";

   function sd_bus_message_new_method_errnof
     (call : access sd_bus_message;
      m : System.Address;
      error : int;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_new_method_errnof";

   function sd_bus_message_ref (m : access sd_bus_message) return access sd_bus_message  -- /usr/include/systemd/sd-bus.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_ref";

   function sd_bus_message_unref (m : access sd_bus_message) return access sd_bus_message  -- /usr/include/systemd/sd-bus.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_unref";

   function sd_bus_message_seal
     (m : access sd_bus_message;
      cookie : unsigned_long;
      timeout_usec : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_seal";

   function sd_bus_message_get_type (m : access sd_bus_message; c_type : access unsigned_char) return int  -- /usr/include/systemd/sd-bus.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_type";

   function sd_bus_message_get_cookie (m : access sd_bus_message; cookie : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_cookie";

   function sd_bus_message_get_reply_cookie (m : access sd_bus_message; cookie : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_reply_cookie";

   function sd_bus_message_get_priority (m : access sd_bus_message; priority : access long) return int  -- /usr/include/systemd/sd-bus.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_priority";

   function sd_bus_message_get_expect_reply (m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_expect_reply";

   function sd_bus_message_get_auto_start (m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_auto_start";

   function sd_bus_message_get_allow_interactive_authorization (m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_allow_interactive_authorization";

   function sd_bus_message_get_signature (m : access sd_bus_message; complete : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-bus.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_signature";

   function sd_bus_message_get_path (m : access sd_bus_message) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-bus.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_path";

   function sd_bus_message_get_interface (m : access sd_bus_message) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-bus.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_interface";

   function sd_bus_message_get_member (m : access sd_bus_message) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-bus.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_member";

   function sd_bus_message_get_destination (m : access sd_bus_message) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-bus.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_destination";

   function sd_bus_message_get_sender (m : access sd_bus_message) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-bus.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_sender";

   function sd_bus_message_get_error (m : access sd_bus_message) return access constant sd_bus_error  -- /usr/include/systemd/sd-bus.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_error";

   function sd_bus_message_get_errno (m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_errno";

   function sd_bus_message_get_monotonic_usec (m : access sd_bus_message; usec : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_monotonic_usec";

   function sd_bus_message_get_realtime_usec (m : access sd_bus_message; usec : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_realtime_usec";

   function sd_bus_message_get_seqnum (m : access sd_bus_message; seqnum : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_seqnum";

   function sd_bus_message_get_bus (m : access sd_bus_message) return access sd_bus  -- /usr/include/systemd/sd-bus.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_bus";

  -- do not unref the result  
   function sd_bus_message_get_creds (m : access sd_bus_message) return access sd_bus_creds  -- /usr/include/systemd/sd-bus.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_get_creds";

   function sd_bus_message_is_signal
     (m : access sd_bus_message;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_is_signal";

   function sd_bus_message_is_method_call
     (m : access sd_bus_message;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_is_method_call";

   function sd_bus_message_is_method_error (m : access sd_bus_message; name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_is_method_error";

   function sd_bus_message_is_empty (m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_is_empty";

   function sd_bus_message_has_signature (m : access sd_bus_message; signature : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_has_signature";

   function sd_bus_message_set_expect_reply (m : access sd_bus_message; b : int) return int  -- /usr/include/systemd/sd-bus.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_set_expect_reply";

   function sd_bus_message_set_auto_start (m : access sd_bus_message; b : int) return int  -- /usr/include/systemd/sd-bus.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_set_auto_start";

   function sd_bus_message_set_allow_interactive_authorization (m : access sd_bus_message; b : int) return int  -- /usr/include/systemd/sd-bus.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_set_allow_interactive_authorization";

   function sd_bus_message_set_destination (m : access sd_bus_message; destination : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_set_destination";

   function sd_bus_message_set_sender (m : access sd_bus_message; sender : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_set_sender";

   function sd_bus_message_set_priority (m : access sd_bus_message; priority : long) return int  -- /usr/include/systemd/sd-bus.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_set_priority";

   function sd_bus_message_append (m : access sd_bus_message; types : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append";

   function sd_bus_message_appendv
     (m : access sd_bus_message;
      types : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /usr/include/systemd/sd-bus.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_appendv";

   function sd_bus_message_append_basic
     (m : access sd_bus_message;
      c_type : char;
      p : System.Address) return int  -- /usr/include/systemd/sd-bus.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append_basic";

   function sd_bus_message_append_array
     (m : access sd_bus_message;
      c_type : char;
      ptr : System.Address;
      size : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append_array";

   function sd_bus_message_append_array_space
     (m : access sd_bus_message;
      c_type : char;
      size : unsigned_long;
      ptr : System.Address) return int  -- /usr/include/systemd/sd-bus.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append_array_space";

   function sd_bus_message_append_array_iovec
     (m : access sd_bus_message;
      c_type : char;
      iov : access constant System.Address;
      n : unsigned) return int  -- /usr/include/systemd/sd-bus.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append_array_iovec";

   function sd_bus_message_append_array_memfd
     (m : access sd_bus_message;
      c_type : char;
      memfd : int;
      offset : unsigned_long;
      size : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append_array_memfd";

   function sd_bus_message_append_string_space
     (m : access sd_bus_message;
      size : unsigned_long;
      s : System.Address) return int  -- /usr/include/systemd/sd-bus.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append_string_space";

   function sd_bus_message_append_string_iovec
     (m : access sd_bus_message;
      iov : access constant System.Address;
      n : unsigned) return int  -- /usr/include/systemd/sd-bus.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append_string_iovec";

   function sd_bus_message_append_string_memfd
     (m : access sd_bus_message;
      memfd : int;
      offset : unsigned_long;
      size : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append_string_memfd";

   function sd_bus_message_append_strv (m : access sd_bus_message; l : System.Address) return int  -- /usr/include/systemd/sd-bus.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_append_strv";

   function sd_bus_message_open_container
     (m : access sd_bus_message;
      c_type : char;
      contents : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_open_container";

   function sd_bus_message_close_container (m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_close_container";

   function sd_bus_message_copy
     (m : access sd_bus_message;
      source : access sd_bus_message;
      c_all : int) return int  -- /usr/include/systemd/sd-bus.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_copy";

   function sd_bus_message_read (m : access sd_bus_message; types : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_read";

   function sd_bus_message_readv
     (m : access sd_bus_message;
      types : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /usr/include/systemd/sd-bus.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_readv";

   function sd_bus_message_read_basic
     (m : access sd_bus_message;
      c_type : char;
      p : System.Address) return int  -- /usr/include/systemd/sd-bus.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_read_basic";

   function sd_bus_message_read_array
     (m : access sd_bus_message;
      c_type : char;
      ptr : System.Address;
      size : access unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_read_array";

  -- free the result!  
   function sd_bus_message_read_strv (m : access sd_bus_message; l : System.Address) return int  -- /usr/include/systemd/sd-bus.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_read_strv";

   function sd_bus_message_skip (m : access sd_bus_message; types : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_skip";

   function sd_bus_message_enter_container
     (m : access sd_bus_message;
      c_type : char;
      contents : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_enter_container";

   function sd_bus_message_exit_container (m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_exit_container";

   function sd_bus_message_peek_type
     (m : access sd_bus_message;
      c_type : Interfaces.C.Strings.chars_ptr;
      contents : System.Address) return int  -- /usr/include/systemd/sd-bus.h:321
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_peek_type";

   function sd_bus_message_verify_type
     (m : access sd_bus_message;
      c_type : char;
      contents : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_verify_type";

   function sd_bus_message_at_end (m : access sd_bus_message; complete : int) return int  -- /usr/include/systemd/sd-bus.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_at_end";

   function sd_bus_message_rewind (m : access sd_bus_message; complete : int) return int  -- /usr/include/systemd/sd-bus.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_rewind";

  -- Bus management  
   function sd_bus_get_unique_name (bus : access sd_bus; unique : System.Address) return int  -- /usr/include/systemd/sd-bus.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_unique_name";

   function sd_bus_request_name
     (bus : access sd_bus;
      name : Interfaces.C.Strings.chars_ptr;
      flags : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_request_name";

   function sd_bus_request_name_async
     (bus : access sd_bus;
      ret_slot : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      flags : unsigned_long;
      callback : sd_bus_message_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_request_name_async";

   function sd_bus_release_name (bus : access sd_bus; name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_release_name";

   function sd_bus_release_name_async
     (bus : access sd_bus;
      ret_slot : System.Address;
      name : Interfaces.C.Strings.chars_ptr;
      callback : sd_bus_message_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_release_name_async";

  -- free the results  
   function sd_bus_list_names
     (bus : access sd_bus;
      acquired : System.Address;
      activatable : System.Address) return int  -- /usr/include/systemd/sd-bus.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_list_names";

  -- unref the result!  
   function sd_bus_get_name_creds
     (bus : access sd_bus;
      name : Interfaces.C.Strings.chars_ptr;
      mask : unsigned_long;
      creds : System.Address) return int  -- /usr/include/systemd/sd-bus.h:334
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_name_creds";

   function sd_bus_get_name_machine_id
     (bus : access sd_bus;
      name : Interfaces.C.Strings.chars_ptr;
      machine : access Systemd.Low_Level.systemd_sd_id128_h.sd_id128_t) return int  -- /usr/include/systemd/sd-bus.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_name_machine_id";

  -- Convenience calls  
   function sd_bus_call_method
     (bus : access sd_bus;
      destination : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      ret_error : access sd_bus_error;
      reply : System.Address;
      types : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_call_method";

   function sd_bus_call_method_async
     (bus : access sd_bus;
      slot : System.Address;
      destination : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      callback : sd_bus_message_handler_t;
      userdata : System.Address;
      types : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_call_method_async";

   function sd_bus_get_property
     (bus : access sd_bus;
      destination : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      ret_error : access sd_bus_error;
      reply : System.Address;
      c_type : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_property";

   function sd_bus_get_property_trivial
     (bus : access sd_bus;
      destination : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      ret_error : access sd_bus_error;
      c_type : char;
      ret_ptr : System.Address) return int  -- /usr/include/systemd/sd-bus.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_property_trivial";

  -- free the result!  
   function sd_bus_get_property_string
     (bus : access sd_bus;
      destination : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      ret_error : access sd_bus_error;
      ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_property_string";

  -- free the result!  
   function sd_bus_get_property_strv
     (bus : access sd_bus;
      destination : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      ret_error : access sd_bus_error;
      ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_get_property_strv";

   function sd_bus_set_property
     (bus : access sd_bus;
      destination : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      ret_error : access sd_bus_error;
      c_type : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_set_property";

   function sd_bus_reply_method_return (call : access sd_bus_message; types : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_reply_method_return";

   function sd_bus_reply_method_error (call : access sd_bus_message; e : access constant sd_bus_error) return int  -- /usr/include/systemd/sd-bus.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_reply_method_error";

   function sd_bus_reply_method_errorf
     (call : access sd_bus_message;
      name : Interfaces.C.Strings.chars_ptr;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_reply_method_errorf";

   function sd_bus_reply_method_errno
     (call : access sd_bus_message;
      error : int;
      e : access constant sd_bus_error) return int  -- /usr/include/systemd/sd-bus.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_reply_method_errno";

   function sd_bus_reply_method_errnof
     (call : access sd_bus_message;
      error : int;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_reply_method_errnof";

   function sd_bus_emit_signal
     (bus : access sd_bus;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      types : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_emit_signal";

   function sd_bus_emit_properties_changed_strv
     (bus : access sd_bus;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      names : System.Address) return int  -- /usr/include/systemd/sd-bus.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_emit_properties_changed_strv";

   function sd_bus_emit_properties_changed
     (bus : access sd_bus;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      name : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_emit_properties_changed";

   function sd_bus_emit_object_added (bus : access sd_bus; path : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_emit_object_added";

   function sd_bus_emit_object_removed (bus : access sd_bus; path : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_emit_object_removed";

   function sd_bus_emit_interfaces_added_strv
     (bus : access sd_bus;
      path : Interfaces.C.Strings.chars_ptr;
      interfaces : System.Address) return int  -- /usr/include/systemd/sd-bus.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_emit_interfaces_added_strv";

   function sd_bus_emit_interfaces_added
     (bus : access sd_bus;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_emit_interfaces_added";

   function sd_bus_emit_interfaces_removed_strv
     (bus : access sd_bus;
      path : Interfaces.C.Strings.chars_ptr;
      interfaces : System.Address) return int  -- /usr/include/systemd/sd-bus.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_emit_interfaces_removed_strv";

   function sd_bus_emit_interfaces_removed
     (bus : access sd_bus;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_emit_interfaces_removed";

   function sd_bus_query_sender_creds
     (call : access sd_bus_message;
      mask : unsigned_long;
      creds : System.Address) return int  -- /usr/include/systemd/sd-bus.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_query_sender_creds";

   function sd_bus_query_sender_privilege (call : access sd_bus_message; capability : int) return int  -- /usr/include/systemd/sd-bus.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_query_sender_privilege";

   function sd_bus_match_signal
     (bus : access sd_bus;
      ret : System.Address;
      sender : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      callback : sd_bus_message_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_match_signal";

   function sd_bus_match_signal_async
     (bus : access sd_bus;
      ret : System.Address;
      sender : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      c_interface : Interfaces.C.Strings.chars_ptr;
      member : Interfaces.C.Strings.chars_ptr;
      match_callback : sd_bus_message_handler_t;
      add_callback : sd_bus_message_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_match_signal_async";

  -- Credential handling  
   function sd_bus_creds_new_from_pid
     (ret : System.Address;
      pid : int;
      creds_mask : unsigned_long) return int  -- /usr/include/systemd/sd-bus.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_new_from_pid";

   function sd_bus_creds_ref (c : access sd_bus_creds) return access sd_bus_creds  -- /usr/include/systemd/sd-bus.h:374
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_ref";

   function sd_bus_creds_unref (c : access sd_bus_creds) return access sd_bus_creds  -- /usr/include/systemd/sd-bus.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_unref";

   function sd_bus_creds_get_mask (c : access constant sd_bus_creds) return unsigned_long  -- /usr/include/systemd/sd-bus.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_mask";

   function sd_bus_creds_get_augmented_mask (c : access constant sd_bus_creds) return unsigned_long  -- /usr/include/systemd/sd-bus.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_augmented_mask";

   function sd_bus_creds_get_pid (c : access sd_bus_creds; pid : access int) return int  -- /usr/include/systemd/sd-bus.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_pid";

   function sd_bus_creds_get_ppid (c : access sd_bus_creds; ppid : access int) return int  -- /usr/include/systemd/sd-bus.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_ppid";

   function sd_bus_creds_get_tid (c : access sd_bus_creds; tid : access int) return int  -- /usr/include/systemd/sd-bus.h:381
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_tid";

   function sd_bus_creds_get_uid (c : access sd_bus_creds; uid : access uid_t) return int  -- /usr/include/systemd/sd-bus.h:382
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_uid";

   function sd_bus_creds_get_euid (c : access sd_bus_creds; euid : access uid_t) return int  -- /usr/include/systemd/sd-bus.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_euid";

   function sd_bus_creds_get_suid (c : access sd_bus_creds; suid : access uid_t) return int  -- /usr/include/systemd/sd-bus.h:384
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_suid";

   function sd_bus_creds_get_fsuid (c : access sd_bus_creds; fsuid : access uid_t) return int  -- /usr/include/systemd/sd-bus.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_fsuid";

   function sd_bus_creds_get_gid (c : access sd_bus_creds; gid : access gid_t) return int  -- /usr/include/systemd/sd-bus.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_gid";

   function sd_bus_creds_get_egid (c : access sd_bus_creds; egid : access gid_t) return int  -- /usr/include/systemd/sd-bus.h:387
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_egid";

   function sd_bus_creds_get_sgid (c : access sd_bus_creds; sgid : access gid_t) return int  -- /usr/include/systemd/sd-bus.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_sgid";

   function sd_bus_creds_get_fsgid (c : access sd_bus_creds; fsgid : access gid_t) return int  -- /usr/include/systemd/sd-bus.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_fsgid";

   function sd_bus_creds_get_supplementary_gids (c : access sd_bus_creds; gids : System.Address) return int  -- /usr/include/systemd/sd-bus.h:390
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_supplementary_gids";

   function sd_bus_creds_get_comm (c : access sd_bus_creds; comm : System.Address) return int  -- /usr/include/systemd/sd-bus.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_comm";

   function sd_bus_creds_get_tid_comm (c : access sd_bus_creds; comm : System.Address) return int  -- /usr/include/systemd/sd-bus.h:392
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_tid_comm";

   function sd_bus_creds_get_exe (c : access sd_bus_creds; exe : System.Address) return int  -- /usr/include/systemd/sd-bus.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_exe";

   function sd_bus_creds_get_cmdline (c : access sd_bus_creds; cmdline : System.Address) return int  -- /usr/include/systemd/sd-bus.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_cmdline";

   function sd_bus_creds_get_cgroup (c : access sd_bus_creds; cgroup : System.Address) return int  -- /usr/include/systemd/sd-bus.h:395
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_cgroup";

   function sd_bus_creds_get_unit (c : access sd_bus_creds; unit : System.Address) return int  -- /usr/include/systemd/sd-bus.h:396
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_unit";

   function sd_bus_creds_get_slice (c : access sd_bus_creds; slice : System.Address) return int  -- /usr/include/systemd/sd-bus.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_slice";

   function sd_bus_creds_get_user_unit (c : access sd_bus_creds; unit : System.Address) return int  -- /usr/include/systemd/sd-bus.h:398
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_user_unit";

   function sd_bus_creds_get_user_slice (c : access sd_bus_creds; slice : System.Address) return int  -- /usr/include/systemd/sd-bus.h:399
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_user_slice";

   function sd_bus_creds_get_session (c : access sd_bus_creds; session : System.Address) return int  -- /usr/include/systemd/sd-bus.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_session";

   function sd_bus_creds_get_owner_uid (c : access sd_bus_creds; uid : access uid_t) return int  -- /usr/include/systemd/sd-bus.h:401
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_owner_uid";

   function sd_bus_creds_has_effective_cap (c : access sd_bus_creds; capability : int) return int  -- /usr/include/systemd/sd-bus.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_has_effective_cap";

   function sd_bus_creds_has_permitted_cap (c : access sd_bus_creds; capability : int) return int  -- /usr/include/systemd/sd-bus.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_has_permitted_cap";

   function sd_bus_creds_has_inheritable_cap (c : access sd_bus_creds; capability : int) return int  -- /usr/include/systemd/sd-bus.h:404
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_has_inheritable_cap";

   function sd_bus_creds_has_bounding_cap (c : access sd_bus_creds; capability : int) return int  -- /usr/include/systemd/sd-bus.h:405
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_has_bounding_cap";

   function sd_bus_creds_get_selinux_context (c : access sd_bus_creds; context : System.Address) return int  -- /usr/include/systemd/sd-bus.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_selinux_context";

   function sd_bus_creds_get_audit_session_id (c : access sd_bus_creds; sessionid : access unsigned) return int  -- /usr/include/systemd/sd-bus.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_audit_session_id";

   function sd_bus_creds_get_audit_login_uid (c : access sd_bus_creds; loginuid : access uid_t) return int  -- /usr/include/systemd/sd-bus.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_audit_login_uid";

   function sd_bus_creds_get_tty (c : access sd_bus_creds; tty : System.Address) return int  -- /usr/include/systemd/sd-bus.h:409
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_tty";

   function sd_bus_creds_get_unique_name (c : access sd_bus_creds; name : System.Address) return int  -- /usr/include/systemd/sd-bus.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_unique_name";

   function sd_bus_creds_get_well_known_names (c : access sd_bus_creds; names : System.Address) return int  -- /usr/include/systemd/sd-bus.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_well_known_names";

   function sd_bus_creds_get_description (c : access sd_bus_creds; name : System.Address) return int  -- /usr/include/systemd/sd-bus.h:412
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_get_description";

  -- Error structures  
   procedure sd_bus_error_free (e : access sd_bus_error)  -- /usr/include/systemd/sd-bus.h:419
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_free";

   function sd_bus_error_set
     (e : access sd_bus_error;
      name : Interfaces.C.Strings.chars_ptr;
      message : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:420
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_set";

   function sd_bus_error_setf
     (e : access sd_bus_error;
      name : Interfaces.C.Strings.chars_ptr;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_setf";

   function sd_bus_error_set_const
     (e : access sd_bus_error;
      name : Interfaces.C.Strings.chars_ptr;
      message : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_set_const";

   function sd_bus_error_set_errno (e : access sd_bus_error; error : int) return int  -- /usr/include/systemd/sd-bus.h:423
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_set_errno";

   function sd_bus_error_set_errnof
     (e : access sd_bus_error;
      error : int;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_set_errnof";

   function sd_bus_error_set_errnofv
     (e : access sd_bus_error;
      error : int;
      format : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /usr/include/systemd/sd-bus.h:425
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_set_errnofv";

   function sd_bus_error_get_errno (e : access constant sd_bus_error) return int  -- /usr/include/systemd/sd-bus.h:426
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_get_errno";

   function sd_bus_error_copy (dest : access sd_bus_error; e : access constant sd_bus_error) return int  -- /usr/include/systemd/sd-bus.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_copy";

   function sd_bus_error_move (dest : access sd_bus_error; e : access sd_bus_error) return int  -- /usr/include/systemd/sd-bus.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_move";

   function sd_bus_error_is_set (e : access constant sd_bus_error) return int  -- /usr/include/systemd/sd-bus.h:429
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_is_set";

   function sd_bus_error_has_name (e : access constant sd_bus_error; name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:430
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_has_name";

   function sd_bus_error_add_map (map : access constant sd_bus_error_map) return int  -- /usr/include/systemd/sd-bus.h:443
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_error_add_map";

  -- Auxiliary macros  
  -- Label escaping  
   function sd_bus_path_encode
     (prefix : Interfaces.C.Strings.chars_ptr;
      external_id : Interfaces.C.Strings.chars_ptr;
      ret_path : System.Address) return int  -- /usr/include/systemd/sd-bus.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_path_encode";

   function sd_bus_path_encode_many (c_out : System.Address; path_template : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:462
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_path_encode_many";

   function sd_bus_path_decode
     (path : Interfaces.C.Strings.chars_ptr;
      prefix : Interfaces.C.Strings.chars_ptr;
      ret_external_id : System.Address) return int  -- /usr/include/systemd/sd-bus.h:463
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_path_decode";

   function sd_bus_path_decode_many (path : Interfaces.C.Strings.chars_ptr; path_template : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-bus.h:464
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_path_decode_many";

  -- Tracking peers  
   function sd_bus_track_new
     (bus : access sd_bus;
      track : System.Address;
      handler : sd_bus_track_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-bus.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_new";

   function sd_bus_track_ref (track : access sd_bus_track) return access sd_bus_track  -- /usr/include/systemd/sd-bus.h:469
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_ref";

   function sd_bus_track_unref (track : access sd_bus_track) return access sd_bus_track  -- /usr/include/systemd/sd-bus.h:470
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_unref";

   function sd_bus_track_get_bus (track : access sd_bus_track) return access sd_bus  -- /usr/include/systemd/sd-bus.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_get_bus";

   function sd_bus_track_get_userdata (track : access sd_bus_track) return System.Address  -- /usr/include/systemd/sd-bus.h:473
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_get_userdata";

   function sd_bus_track_set_userdata (track : access sd_bus_track; userdata : System.Address) return System.Address  -- /usr/include/systemd/sd-bus.h:474
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_set_userdata";

   function sd_bus_track_add_sender (track : access sd_bus_track; m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:476
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_add_sender";

   function sd_bus_track_remove_sender (track : access sd_bus_track; m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:477
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_remove_sender";

   function sd_bus_track_add_name (track : access sd_bus_track; name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:478
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_add_name";

   function sd_bus_track_remove_name (track : access sd_bus_track; name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:479
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_remove_name";

   function sd_bus_track_set_recursive (track : access sd_bus_track; b : int) return int  -- /usr/include/systemd/sd-bus.h:481
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_set_recursive";

   function sd_bus_track_get_recursive (track : access sd_bus_track) return int  -- /usr/include/systemd/sd-bus.h:482
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_get_recursive";

   function sd_bus_track_count (track : access sd_bus_track) return unsigned  -- /usr/include/systemd/sd-bus.h:484
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_count";

   function sd_bus_track_count_sender (track : access sd_bus_track; m : access sd_bus_message) return int  -- /usr/include/systemd/sd-bus.h:485
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_count_sender";

   function sd_bus_track_count_name (track : access sd_bus_track; name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-bus.h:486
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_count_name";

   function sd_bus_track_contains (track : access sd_bus_track; name : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-bus.h:488
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_contains";

   function sd_bus_track_first (track : access sd_bus_track) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-bus.h:489
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_first";

   function sd_bus_track_next (track : access sd_bus_track) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-bus.h:490
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_next";

   function sd_bus_track_set_destroy_callback (s : access sd_bus_track; callback : sd_bus_destroy_t) return int  -- /usr/include/systemd/sd-bus.h:492
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_set_destroy_callback";

   function sd_bus_track_get_destroy_callback (s : access sd_bus_track; ret : System.Address) return int  -- /usr/include/systemd/sd-bus.h:493
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_get_destroy_callback";

  -- Define helpers so that __attribute__((cleanup(sd_bus_unrefp))) and similar may be used.  
   procedure sd_bus_unrefp (p : System.Address)  -- /usr/include/systemd/sd-bus.h:496
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_unrefp";

   procedure sd_bus_close_unrefp (p : System.Address)  -- /usr/include/systemd/sd-bus.h:497
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_close_unrefp";

   procedure sd_bus_flush_close_unrefp (p : System.Address)  -- /usr/include/systemd/sd-bus.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_flush_close_unrefp";

   procedure sd_bus_slot_unrefp (p : System.Address)  -- /usr/include/systemd/sd-bus.h:499
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_slot_unrefp";

   procedure sd_bus_message_unrefp (p : System.Address)  -- /usr/include/systemd/sd-bus.h:500
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_message_unrefp";

   procedure sd_bus_creds_unrefp (p : System.Address)  -- /usr/include/systemd/sd-bus.h:501
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_creds_unrefp";

   procedure sd_bus_track_unrefp (p : System.Address)  -- /usr/include/systemd/sd-bus.h:502
   with Import => True, 
        Convention => C, 
        External_Name => "sd_bus_track_unrefp";

end Systemd.Low_Level.systemd_sd_bus_h;
