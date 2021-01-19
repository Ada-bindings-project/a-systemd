pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with Interfaces.C.Strings;


package Systemd.Low_Level.systemd_sd_login_h is

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

  -- * A few points:
  -- *
  -- * Instead of returning an empty string array or empty uid array, we
  -- * may return NULL.
  -- *
  -- * Free the data the library returns with libc free(). String arrays
  -- * are NULL terminated, and you need to free the array itself, in
  -- * addition to the strings contained.
  -- *
  -- * We return error codes as negative errno, kernel-style. On success, we
  -- * return 0 or positive.
  -- *
  -- * These functions access data in /proc, /sys/fs/cgroup, and /run. All
  -- * of these are virtual file systems; therefore, accesses are
  -- * relatively cheap.
  -- *
  -- * See sd-login(3) for more information.
  --  

  -- Get session from PID. Note that 'shared' processes of a user are
  -- * not attached to a session, but only attached to a user. This will
  -- * return an error for system processes and 'shared' processes of a
  -- * user.  

   function sd_pid_get_session (pid : int; session : System.Address) return int  -- /usr/include/systemd/sd-login.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "sd_pid_get_session";

  -- Get UID of the owner of the session of the PID (or in case the
  -- * process is a 'shared' user process, the UID of that user is
  -- * returned). This will not return the UID of the process, but rather
  -- * the UID of the owner of the cgroup that the process is in. This will
  -- * return an error for system processes.  

   function sd_pid_get_owner_uid (pid : int; uid : access uid_t) return int  -- /usr/include/systemd/sd-login.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "sd_pid_get_owner_uid";

  -- Get systemd non-slice unit (i.e. service) name from PID, for system
  -- * services. This will return an error for non-service processes.  

   function sd_pid_get_unit (pid : int; unit : System.Address) return int  -- /usr/include/systemd/sd-login.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "sd_pid_get_unit";

  -- Get systemd non-slice unit (i.e. service) name from PID, for user
  -- * services. This will return an error for non-user-service
  -- * processes.  

   function sd_pid_get_user_unit (pid : int; unit : System.Address) return int  -- /usr/include/systemd/sd-login.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "sd_pid_get_user_unit";

  -- Get slice name from PID.  
   function sd_pid_get_slice (pid : int; slice : System.Address) return int  -- /usr/include/systemd/sd-login.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "sd_pid_get_slice";

  -- Get user slice name from PID.  
   function sd_pid_get_user_slice (pid : int; slice : System.Address) return int  -- /usr/include/systemd/sd-login.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sd_pid_get_user_slice";

  -- Get machine name from PID, for processes assigned to a VM or
  -- * container. This will return an error for non-machine processes.  

   function sd_pid_get_machine_name (pid : int; machine : System.Address) return int  -- /usr/include/systemd/sd-login.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "sd_pid_get_machine_name";

  -- Get the control group from a PID, relative to the root of the
  -- * hierarchy.  

   function sd_pid_get_cgroup (pid : int; cgroup : System.Address) return int  -- /usr/include/systemd/sd-login.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "sd_pid_get_cgroup";

  -- Similar to sd_pid_get_session(), but retrieves data about the peer
  -- * of a connected AF_UNIX socket  

   function sd_peer_get_session (fd : int; session : System.Address) return int  -- /usr/include/systemd/sd-login.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "sd_peer_get_session";

  -- Similar to sd_pid_get_owner_uid(), but retrieves data about the peer of
  -- * a connected AF_UNIX socket  

   function sd_peer_get_owner_uid (fd : int; uid : access uid_t) return int  -- /usr/include/systemd/sd-login.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "sd_peer_get_owner_uid";

  -- Similar to sd_pid_get_unit(), but retrieves data about the peer of
  -- * a connected AF_UNIX socket  

   function sd_peer_get_unit (fd : int; unit : System.Address) return int  -- /usr/include/systemd/sd-login.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "sd_peer_get_unit";

  -- Similar to sd_pid_get_user_unit(), but retrieves data about the peer of
  -- * a connected AF_UNIX socket  

   function sd_peer_get_user_unit (fd : int; unit : System.Address) return int  -- /usr/include/systemd/sd-login.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "sd_peer_get_user_unit";

  -- Similar to sd_pid_get_slice(), but retrieves data about the peer of
  -- * a connected AF_UNIX socket  

   function sd_peer_get_slice (fd : int; slice : System.Address) return int  -- /usr/include/systemd/sd-login.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "sd_peer_get_slice";

  -- Similar to sd_pid_get_user_slice(), but retrieves data about the peer of
  -- * a connected AF_UNIX socket  

   function sd_peer_get_user_slice (fd : int; slice : System.Address) return int  -- /usr/include/systemd/sd-login.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "sd_peer_get_user_slice";

  -- Similar to sd_pid_get_machine_name(), but retrieves data about the
  -- * peer of a connected AF_UNIX socket  

   function sd_peer_get_machine_name (fd : int; machine : System.Address) return int  -- /usr/include/systemd/sd-login.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "sd_peer_get_machine_name";

  -- Similar to sd_pid_get_cgroup(), but retrieves data about the peer
  -- * of a connected AF_UNIX socket.  

   function sd_peer_get_cgroup (pid : int; cgroup : System.Address) return int  -- /usr/include/systemd/sd-login.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "sd_peer_get_cgroup";

  -- Get state from UID. Possible states: offline, lingering, online, active, closing  
   function sd_uid_get_state (uid : uid_t; state : System.Address) return int  -- /usr/include/systemd/sd-login.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "sd_uid_get_state";

  -- Return primary session of user, if there is any  
   function sd_uid_get_display (uid : uid_t; session : System.Address) return int  -- /usr/include/systemd/sd-login.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "sd_uid_get_display";

  -- Return 1 if UID has session on seat. If require_active is true, this will
  -- * look for active sessions only.  

   function sd_uid_is_on_seat
     (uid : uid_t;
      require_active : int;
      seat : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-login.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "sd_uid_is_on_seat";

  -- Return sessions of user. If require_active is true, this will look for
  -- * active sessions only. Returns the number of sessions.
  -- * If sessions is NULL, this will just return the number of sessions.  

   function sd_uid_get_sessions
     (uid : uid_t;
      require_active : int;
      sessions : System.Address) return int  -- /usr/include/systemd/sd-login.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "sd_uid_get_sessions";

  -- Return seats of user is on. If require_active is true, this will look for
  -- * active seats only. Returns the number of seats.
  -- * If seats is NULL, this will just return the number of seats.  

   function sd_uid_get_seats
     (uid : uid_t;
      require_active : int;
      seats : System.Address) return int  -- /usr/include/systemd/sd-login.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "sd_uid_get_seats";

  -- Return 1 if the session is active.  
   function sd_session_is_active (session : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-login.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_is_active";

  -- Return 1 if the session is remote.  
   function sd_session_is_remote (session : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-login.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_is_remote";

  -- Get state from session. Possible states: online, active, closing.
  -- * This function is a more generic version of sd_session_is_active().  

   function sd_session_get_state (session : Interfaces.C.Strings.chars_ptr; state : System.Address) return int  -- /usr/include/systemd/sd-login.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_state";

  -- Determine user ID of session  
   function sd_session_get_uid (session : Interfaces.C.Strings.chars_ptr; uid : access uid_t) return int  -- /usr/include/systemd/sd-login.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_uid";

  -- Determine seat of session  
   function sd_session_get_seat (session : Interfaces.C.Strings.chars_ptr; seat : System.Address) return int  -- /usr/include/systemd/sd-login.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_seat";

  -- Determine the (PAM) service name this session was registered by.  
   function sd_session_get_service (session : Interfaces.C.Strings.chars_ptr; service : System.Address) return int  -- /usr/include/systemd/sd-login.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_service";

  -- Determine the type of this session, i.e. one of "tty", "x11", "wayland", "mir" or "unspecified".  
   function sd_session_get_type (session : Interfaces.C.Strings.chars_ptr; c_type : System.Address) return int  -- /usr/include/systemd/sd-login.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_type";

  -- Determine the class of this session, i.e. one of "user", "greeter" or "lock-screen".  
   function sd_session_get_class (session : Interfaces.C.Strings.chars_ptr; clazz : System.Address) return int  -- /usr/include/systemd/sd-login.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_class";

  -- Determine the desktop brand of this session, i.e. something like "GNOME", "KDE" or "systemd-console".  
   function sd_session_get_desktop (session : Interfaces.C.Strings.chars_ptr; desktop : System.Address) return int  -- /usr/include/systemd/sd-login.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_desktop";

  -- Determine the X11 display of this session.  
   function sd_session_get_display (session : Interfaces.C.Strings.chars_ptr; display : System.Address) return int  -- /usr/include/systemd/sd-login.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_display";

  -- Determine the remote host of this session.  
   function sd_session_get_remote_host (session : Interfaces.C.Strings.chars_ptr; remote_host : System.Address) return int  -- /usr/include/systemd/sd-login.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_remote_host";

  -- Determine the remote user of this session (if provided by PAM).  
   function sd_session_get_remote_user (session : Interfaces.C.Strings.chars_ptr; remote_user : System.Address) return int  -- /usr/include/systemd/sd-login.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_remote_user";

  -- Determine the TTY of this session.  
   function sd_session_get_tty (session : Interfaces.C.Strings.chars_ptr; display : System.Address) return int  -- /usr/include/systemd/sd-login.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_tty";

  -- Determine the VT number of this session.  
   function sd_session_get_vt (session : Interfaces.C.Strings.chars_ptr; vtnr : access unsigned) return int  -- /usr/include/systemd/sd-login.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "sd_session_get_vt";

  -- Return active session and user of seat  
   function sd_seat_get_active
     (seat : Interfaces.C.Strings.chars_ptr;
      session : System.Address;
      uid : access uid_t) return int  -- /usr/include/systemd/sd-login.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "sd_seat_get_active";

  -- Return sessions and users on seat. Returns number of sessions.
  -- * If sessions is NULL, this returns only the number of sessions.  

   function sd_seat_get_sessions
     (seat : Interfaces.C.Strings.chars_ptr;
      sessions : System.Address;
      uid : System.Address;
      n_uids : access unsigned) return int  -- /usr/include/systemd/sd-login.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "sd_seat_get_sessions";

  -- Return whether the seat is multi-session capable  
   function sd_seat_can_multi_session (seat : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-login.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "sd_seat_can_multi_session";

  -- Return whether the seat is TTY capable, i.e. suitable for showing console UIs  
   function sd_seat_can_tty (seat : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-login.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "sd_seat_can_tty";

  -- Return whether the seat is graphics capable, i.e. suitable for showing graphical UIs  
   function sd_seat_can_graphical (seat : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-login.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "sd_seat_can_graphical";

  -- Return the class of machine  
   function sd_machine_get_class (machine : Interfaces.C.Strings.chars_ptr; clazz : System.Address) return int  -- /usr/include/systemd/sd-login.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "sd_machine_get_class";

  -- Return the list if host-side network interface indices of a machine  
   function sd_machine_get_ifindices (machine : Interfaces.C.Strings.chars_ptr; ifindices : System.Address) return int  -- /usr/include/systemd/sd-login.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "sd_machine_get_ifindices";

  -- Get all seats, store in *seats. Returns the number of seats. If
  -- * seats is NULL, this only returns the number of seats.  

   function sd_get_seats (seats : System.Address) return int  -- /usr/include/systemd/sd-login.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "sd_get_seats";

  -- Get all sessions, store in *sessions. Returns the number of
  -- * sessions. If sessions is NULL, this only returns the number of sessions.  

   function sd_get_sessions (sessions : System.Address) return int  -- /usr/include/systemd/sd-login.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "sd_get_sessions";

  -- Get all logged in users, store in *users. Returns the number of
  -- * users. If users is NULL, this only returns the number of users.  

   function sd_get_uids (users : System.Address) return int  -- /usr/include/systemd/sd-login.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "sd_get_uids";

  -- Get all running virtual machines/containers  
   function sd_get_machine_names (machines : System.Address) return int  -- /usr/include/systemd/sd-login.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "sd_get_machine_names";

  -- Monitor object  
   type sd_login_monitor is null record;   -- incomplete struct

  -- Create a new monitor. Category must be NULL, "seat", "session",
  -- * "uid", or "machine" to get monitor events for the specific category
  -- * (or all).  

   function sd_login_monitor_new (category : Interfaces.C.Strings.chars_ptr; ret : System.Address) return int  -- /usr/include/systemd/sd-login.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "sd_login_monitor_new";

  -- Destroys the passed monitor. Returns NULL.  
   function sd_login_monitor_unref (m : access sd_login_monitor) return access sd_login_monitor  -- /usr/include/systemd/sd-login.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "sd_login_monitor_unref";

  -- Flushes the monitor  
   function sd_login_monitor_flush (m : access sd_login_monitor) return int  -- /usr/include/systemd/sd-login.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "sd_login_monitor_flush";

  -- Get FD from monitor  
   function sd_login_monitor_get_fd (m : access sd_login_monitor) return int  -- /usr/include/systemd/sd-login.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "sd_login_monitor_get_fd";

  -- Get poll() mask to monitor  
   function sd_login_monitor_get_events (m : access sd_login_monitor) return int  -- /usr/include/systemd/sd-login.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "sd_login_monitor_get_events";

  -- Get timeout for poll(), as usec value relative to CLOCK_MONOTONIC's epoch  
   function sd_login_monitor_get_timeout (m : access sd_login_monitor; timeout_usec : access unsigned_long) return int  -- /usr/include/systemd/sd-login.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "sd_login_monitor_get_timeout";

   procedure sd_login_monitor_unrefp (p : System.Address)  -- /usr/include/systemd/sd-login.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "sd_login_monitor_unrefp";

end Systemd.Low_Level.systemd_sd_login_h;
