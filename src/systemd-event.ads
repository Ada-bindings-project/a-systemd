pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;





with Interfaces.C.Strings;


package Systemd.event is

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


   function sd_event_default (e : System.Address) return int  -- /usr/include/systemd/sd-event.h:82
   ;

   function sd_event_new (e : System.Address) return int  -- /usr/include/systemd/sd-event.h:84
   ;

   function sd_event_ref (e : access sd_event) return access sd_event  -- /usr/include/systemd/sd-event.h:85
   ;

   function sd_event_unref (e : access sd_event) return access sd_event  -- /usr/include/systemd/sd-event.h:86
   ;

   function sd_event_add_io
     (e : access sd_event;
      s : System.Address;
      fd : int;
      events : unsigned;
      callback : sd_event_io_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:88
   ;

   function sd_event_add_time
     (e : access sd_event;
      s : System.Address;
      clock : clockid_t;
      usec : unsigned_long;
      accuracy : unsigned_long;
      callback : sd_event_time_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:89
   ;

   function sd_event_add_signal
     (e : access sd_event;
      s : System.Address;
      sig : int;
      callback : sd_event_signal_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:90
   ;

   function sd_event_add_child
     (e : access sd_event;
      s : System.Address;
      pid : int;
      options : int;
      callback : sd_event_child_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:91
   ;

   function sd_event_add_inotify
     (e : access sd_event;
      s : System.Address;
      path : Interfaces.C.Strings.chars_ptr;
      mask : unsigned;
      callback : sd_event_inotify_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:92
   ;

   function sd_event_add_defer
     (e : access sd_event;
      s : System.Address;
      callback : sd_event_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:93
   ;

   function sd_event_add_post
     (e : access sd_event;
      s : System.Address;
      callback : sd_event_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:94
   ;

   function sd_event_add_exit
     (e : access sd_event;
      s : System.Address;
      callback : sd_event_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-event.h:95
   ;

   function sd_event_prepare (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:97
   ;

   function sd_event_wait (e : access sd_event; usec : unsigned_long) return int  -- /usr/include/systemd/sd-event.h:98
   ;

   function sd_event_dispatch (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:99
   ;

   function sd_event_run (e : access sd_event; usec : unsigned_long) return int  -- /usr/include/systemd/sd-event.h:100
   ;

   function sd_event_loop (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:101
   ;

   function sd_event_exit (e : access sd_event; code : int) return int  -- /usr/include/systemd/sd-event.h:102
   ;

   function sd_event_now
     (e : access sd_event;
      clock : clockid_t;
      usec : access unsigned_long) return int  -- /usr/include/systemd/sd-event.h:104
   ;

   function sd_event_get_fd (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:106
   ;

   function sd_event_get_state (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:107
   ;

   function sd_event_get_tid (e : access sd_event; tid : access int) return int  -- /usr/include/systemd/sd-event.h:108
   ;

   function sd_event_get_exit_code (e : access sd_event; code : access int) return int  -- /usr/include/systemd/sd-event.h:109
   ;

   function sd_event_set_watchdog (e : access sd_event; b : int) return int  -- /usr/include/systemd/sd-event.h:110
   ;

   function sd_event_get_watchdog (e : access sd_event) return int  -- /usr/include/systemd/sd-event.h:111
   ;

   function sd_event_get_iteration (e : access sd_event; ret : access unsigned_long) return int  -- /usr/include/systemd/sd-event.h:112
   ;

   function sd_event_source_ref (s : access sd_event_source) return access sd_event_source  -- /usr/include/systemd/sd-event.h:114
   ;

   function sd_event_source_unref (s : access sd_event_source) return access sd_event_source  -- /usr/include/systemd/sd-event.h:115
   ;

   function sd_event_source_get_event (s : access sd_event_source) return access sd_event  -- /usr/include/systemd/sd-event.h:117
   ;

   function sd_event_source_get_userdata (s : access sd_event_source) return System.Address  -- /usr/include/systemd/sd-event.h:118
   ;

   function sd_event_source_set_userdata (s : access sd_event_source; userdata : System.Address) return System.Address  -- /usr/include/systemd/sd-event.h:119
   ;

   function sd_event_source_set_description (s : access sd_event_source; description : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-event.h:121
   ;

   function sd_event_source_get_description (s : access sd_event_source; description : System.Address) return int  -- /usr/include/systemd/sd-event.h:122
   ;

   function sd_event_source_set_prepare (s : access sd_event_source; callback : sd_event_handler_t) return int  -- /usr/include/systemd/sd-event.h:123
   ;

   function sd_event_source_get_pending (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:124
   ;

   function sd_event_source_get_priority (s : access sd_event_source; priority : access long) return int  -- /usr/include/systemd/sd-event.h:125
   ;

   function sd_event_source_set_priority (s : access sd_event_source; priority : long) return int  -- /usr/include/systemd/sd-event.h:126
   ;

   function sd_event_source_get_enabled (s : access sd_event_source; enabled : access int) return int  -- /usr/include/systemd/sd-event.h:127
   ;

   function sd_event_source_set_enabled (s : access sd_event_source; enabled : int) return int  -- /usr/include/systemd/sd-event.h:128
   ;

   function sd_event_source_get_io_fd (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:129
   ;

   function sd_event_source_set_io_fd (s : access sd_event_source; fd : int) return int  -- /usr/include/systemd/sd-event.h:130
   ;

   function sd_event_source_get_io_fd_own (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:131
   ;

   function sd_event_source_set_io_fd_own (s : access sd_event_source; own : int) return int  -- /usr/include/systemd/sd-event.h:132
   ;

   function sd_event_source_get_io_events (s : access sd_event_source; events : access unsigned) return int  -- /usr/include/systemd/sd-event.h:133
   ;

   function sd_event_source_set_io_events (s : access sd_event_source; events : unsigned) return int  -- /usr/include/systemd/sd-event.h:134
   ;

   function sd_event_source_get_io_revents (s : access sd_event_source; revents : access unsigned) return int  -- /usr/include/systemd/sd-event.h:135
   ;

   function sd_event_source_get_time (s : access sd_event_source; usec : access unsigned_long) return int  -- /usr/include/systemd/sd-event.h:136
   ;

   function sd_event_source_set_time (s : access sd_event_source; usec : unsigned_long) return int  -- /usr/include/systemd/sd-event.h:137
   ;

   function sd_event_source_get_time_accuracy (s : access sd_event_source; usec : access unsigned_long) return int  -- /usr/include/systemd/sd-event.h:138
   ;

   function sd_event_source_set_time_accuracy (s : access sd_event_source; usec : unsigned_long) return int  -- /usr/include/systemd/sd-event.h:139
   ;

   function sd_event_source_get_time_clock (s : access sd_event_source; clock : access clockid_t) return int  -- /usr/include/systemd/sd-event.h:140
   ;

   function sd_event_source_get_signal (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:141
   ;

   function sd_event_source_get_child_pid (s : access sd_event_source; pid : access int) return int  -- /usr/include/systemd/sd-event.h:142
   ;

   function sd_event_source_get_inotify_mask (s : access sd_event_source; ret : access unsigned) return int  -- /usr/include/systemd/sd-event.h:143
   ;

   function sd_event_source_set_destroy_callback (s : access sd_event_source; callback : sd_event_destroy_t) return int  -- /usr/include/systemd/sd-event.h:144
   ;

   function sd_event_source_get_destroy_callback (s : access sd_event_source; ret : System.Address) return int  -- /usr/include/systemd/sd-event.h:145
   ;

   function sd_event_source_get_floating (s : access sd_event_source) return int  -- /usr/include/systemd/sd-event.h:146
   ;

   function sd_event_source_set_floating (s : access sd_event_source; b : int) return int  -- /usr/include/systemd/sd-event.h:147
   ;

   procedure sd_event_unrefp (p : System.Address)  -- /usr/include/systemd/sd-event.h:150
   ;

   procedure sd_event_source_unrefp (p : System.Address)  -- /usr/include/systemd/sd-event.h:151
   ;

end Systemd.event;
