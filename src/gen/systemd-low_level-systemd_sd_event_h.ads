pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;




with Systemd.Low_Level.systemd_usd_common_h;


with Interfaces.C.Strings;


package Systemd.Low_Level.systemd_sd_event_h is

   --  unsupported macro: SD_EVENT_DEFAULT ((sd_event *) 1)
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

  --  Why is this better than pure epoll?
  --  - Supports event source prioritization
  --  - Scales better with a large number of time events because it does not require one timerfd each
  --  - Automatically tries to coalesce timer events system-wide
  --  - Handles signals, child PIDs, inotify events
  --  - Supports systemd-style automatic watchdog event generation
  -- 

   type sd_event is null record;   -- incomplete struct

   type sd_event_source is null record;   -- incomplete struct

  -- And everything in-between and outside is good too  
  -- SPDX-License-Identifier: LGPL-2.1+  
   type sd_event_handler_t is access function (arg1 : access sd_event_source; arg2 : System.Address) return int
   with Convention => C;  -- /usr/include/systemd/sd-event.h:70

   type sd_event_io_handler_t is access function
        (arg1 : access sd_event_source;
         arg2 : int;
         arg3 : unsigned;
         arg4 : System.Address) return int
   with Convention => C;  -- /usr/include/systemd/sd-event.h:71

   type sd_event_time_handler_t is access function
        (arg1 : access sd_event_source;
         arg2 : unsigned_long;
         arg3 : System.Address) return int
   with Convention => C;  -- /usr/include/systemd/sd-event.h:72

   type sd_event_signal_handler_t is access function
        (arg1 : access sd_event_source;
         arg2 : access constant System.Address;
         arg3 : System.Address) return int
   with Convention => C;  -- /usr/include/systemd/sd-event.h:73

   type sd_event_child_handler_t is access function
        (arg1 : access sd_event_source;
         arg2 : access constant System.Address;
         arg3 : System.Address) return int
   with Convention => C;  -- /usr/include/systemd/sd-event.h:75

   type sd_event_inotify_handler_t is access function
        (arg1 : access sd_event_source;
         arg2 : access constant System.Address;
         arg3 : System.Address) return int
   with Convention => C;  -- /usr/include/systemd/sd-event.h:79

   subtype sd_event_destroy_t is Systemd.Low_Level.systemd_usd_common_h.u_sd_destroy_t;  -- /usr/include/systemd/sd-event.h:80

   function sd_event_default (e : System.Address) return int  -- /usr/include/systemd/sd-event.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_default";

   function sd_event_new (e : System.Address) return int  -- /usr/include/systemd/sd-event.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_new";

   function sd_event_ref (e : access sd_event) return access sd_event  -- /usr/include/systemd/sd-event.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_ref";

   function sd_event_unref (e : access sd_event) return access sd_event  -- /usr/include/systemd/sd-event.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_unref";

   function sd_event_add_io
     (e : access sd_event;
      s : System.Address;
      fd : int;
      events : unsigned;
      callback : sd_event_io_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_add_io";

   function sd_event_add_time
     (e : access sd_event;
      s : System.Address;
      clock : clockid_t;
      usec : unsigned_long;
      accuracy : unsigned_long;
      callback : sd_event_time_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_add_time";

   function sd_event_add_signal
     (e : access sd_event;
      s : System.Address;
      sig : int;
      callback : sd_event_signal_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_add_signal";

   function sd_event_add_child
     (e : access sd_event;
      s : System.Address;
      pid : int;
      options : int;
      callback : sd_event_child_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_add_child";

   function sd_event_add_inotify
     (e : access sd_event;
      s : System.Address;
      path : Interfaces.C.Strings.chars_ptr;
      mask : unsigned;
      callback : sd_event_inotify_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_add_inotify";

   function sd_event_add_defer
     (e : access sd_event;
      s : System.Address;
      callback : sd_event_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_add_defer";

   function sd_event_add_post
     (e : access sd_event;
      s : System.Address;
      callback : sd_event_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_add_post";

   function sd_event_add_exit
     (e : access sd_event;
      s : System.Address;
      callback : sd_event_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_add_exit";

   function sd_event_prepare (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_prepare";

   function sd_event_wait (e : access sd_event; usec : unsigned_long) return int  -- /usr/include/systemd/sd-event.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_wait";

   function sd_event_dispatch (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_dispatch";

   function sd_event_run (e : access sd_event; usec : unsigned_long) return int  -- /usr/include/systemd/sd-event.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_run";

   function sd_event_loop (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_loop";

   function sd_event_exit (e : access sd_event; code : int) return int  -- /usr/include/systemd/sd-event.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_exit";

   function sd_event_now
     (e : access sd_event;
      clock : clockid_t;
      usec : access unsigned_long) return int  -- /usr/include/systemd/sd-event.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_now";

   function sd_event_get_fd (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_get_fd";

   function sd_event_get_state (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_get_state";

   function sd_event_get_tid (e : access sd_event; tid : access int) return int  -- /usr/include/systemd/sd-event.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_get_tid";

   function sd_event_get_exit_code (e : access sd_event; code : access int) return int  -- /usr/include/systemd/sd-event.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_get_exit_code";

   function sd_event_set_watchdog (e : access sd_event; b : int) return int  -- /usr/include/systemd/sd-event.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_set_watchdog";

   function sd_event_get_watchdog (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_get_watchdog";

   function sd_event_get_iteration (e : access sd_event; ret : access unsigned_long) return int  -- /usr/include/systemd/sd-event.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_get_iteration";

   function sd_event_source_ref (s : access sd_event_source) return access sd_event_source  -- /usr/include/systemd/sd-event.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_ref";

   function sd_event_source_unref (s : access sd_event_source) return access sd_event_source  -- /usr/include/systemd/sd-event.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_unref";

   function sd_event_source_get_event (s : access sd_event_source) return access sd_event  -- /usr/include/systemd/sd-event.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_event";

   function sd_event_source_get_userdata (s : access sd_event_source) return System.Address  -- /usr/include/systemd/sd-event.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_userdata";

   function sd_event_source_set_userdata (s : access sd_event_source; userdata : System.Address) return System.Address  -- /usr/include/systemd/sd-event.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_userdata";

   function sd_event_source_set_description (s : access sd_event_source; description : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-event.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_description";

   function sd_event_source_get_description (s : access sd_event_source; description : System.Address) return int  -- /usr/include/systemd/sd-event.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_description";

   function sd_event_source_set_prepare (s : access sd_event_source; callback : sd_event_handler_t) return int  -- /usr/include/systemd/sd-event.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_prepare";

   function sd_event_source_get_pending (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_pending";

   function sd_event_source_get_priority (s : access sd_event_source; priority : access long) return int  -- /usr/include/systemd/sd-event.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_priority";

   function sd_event_source_set_priority (s : access sd_event_source; priority : long) return int  -- /usr/include/systemd/sd-event.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_priority";

   function sd_event_source_get_enabled (s : access sd_event_source; enabled : access int) return int  -- /usr/include/systemd/sd-event.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_enabled";

   function sd_event_source_set_enabled (s : access sd_event_source; enabled : int) return int  -- /usr/include/systemd/sd-event.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_enabled";

   function sd_event_source_get_io_fd (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_io_fd";

   function sd_event_source_set_io_fd (s : access sd_event_source; fd : int) return int  -- /usr/include/systemd/sd-event.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_io_fd";

   function sd_event_source_get_io_fd_own (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_io_fd_own";

   function sd_event_source_set_io_fd_own (s : access sd_event_source; own : int) return int  -- /usr/include/systemd/sd-event.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_io_fd_own";

   function sd_event_source_get_io_events (s : access sd_event_source; events : access unsigned) return int  -- /usr/include/systemd/sd-event.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_io_events";

   function sd_event_source_set_io_events (s : access sd_event_source; events : unsigned) return int  -- /usr/include/systemd/sd-event.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_io_events";

   function sd_event_source_get_io_revents (s : access sd_event_source; revents : access unsigned) return int  -- /usr/include/systemd/sd-event.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_io_revents";

   function sd_event_source_get_time (s : access sd_event_source; usec : access unsigned_long) return int  -- /usr/include/systemd/sd-event.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_time";

   function sd_event_source_set_time (s : access sd_event_source; usec : unsigned_long) return int  -- /usr/include/systemd/sd-event.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_time";

   function sd_event_source_get_time_accuracy (s : access sd_event_source; usec : access unsigned_long) return int  -- /usr/include/systemd/sd-event.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_time_accuracy";

   function sd_event_source_set_time_accuracy (s : access sd_event_source; usec : unsigned_long) return int  -- /usr/include/systemd/sd-event.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_time_accuracy";

   function sd_event_source_get_time_clock (s : access sd_event_source; clock : access clockid_t) return int  -- /usr/include/systemd/sd-event.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_time_clock";

   function sd_event_source_get_signal (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_signal";

   function sd_event_source_get_child_pid (s : access sd_event_source; pid : access int) return int  -- /usr/include/systemd/sd-event.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_child_pid";

   function sd_event_source_get_inotify_mask (s : access sd_event_source; ret : access unsigned) return int  -- /usr/include/systemd/sd-event.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_inotify_mask";

   function sd_event_source_set_destroy_callback (s : access sd_event_source; callback : sd_event_destroy_t) return int  -- /usr/include/systemd/sd-event.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_destroy_callback";

   function sd_event_source_get_destroy_callback (s : access sd_event_source; ret : System.Address) return int  -- /usr/include/systemd/sd-event.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_destroy_callback";

   function sd_event_source_get_floating (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_get_floating";

   function sd_event_source_set_floating (s : access sd_event_source; b : int) return int  -- /usr/include/systemd/sd-event.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_set_floating";

   procedure sd_event_unrefp (p : System.Address)  -- /usr/include/systemd/sd-event.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_unrefp";

   procedure sd_event_source_unrefp (p : System.Address)  -- /usr/include/systemd/sd-event.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "sd_event_source_unrefp";

end Systemd.Low_Level.systemd_sd_event_h;
