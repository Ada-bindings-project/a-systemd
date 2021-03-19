
with Interfaces.C;
with System;
with GNAT.OS_Lib;
with GNAT.Sockets;
package Systemd.Daemon is
   use Interfaces.C;

   EMERG   : aliased constant String := "<0>" & ASCII.NUL;  --  /usr/include/systemd/sd-daemon.h:46
   ALERT   : aliased constant String := "<1>" & ASCII.NUL;  --  /usr/include/systemd/sd-daemon.h:47
   CRIT    : aliased constant String := "<2>" & ASCII.NUL;  --  /usr/include/systemd/sd-daemon.h:48
   ERR     : aliased constant String := "<3>" & ASCII.NUL;  --  /usr/include/systemd/sd-daemon.h:49
   WARNING : aliased constant String := "<4>" & ASCII.NUL;  --  /usr/include/systemd/sd-daemon.h:50
   NOTICE  : aliased constant String := "<5>" & ASCII.NUL;  --  /usr/include/systemd/sd-daemon.h:51
   INFO    : aliased constant String := "<6>" & ASCII.NUL;  --  /usr/include/systemd/sd-daemon.h:52
   DEBUG   : aliased constant String := "<7>" & ASCII.NUL;  --  /usr/include/systemd/sd-daemon.h:53

   LISTEN_FDS_START : constant := 3;  --  /usr/include/systemd/sd-daemon.h:56

   --  SPDX-License-Identifier: LGPL-2.1+
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

   type U_Sd_Useless_Struct_To_Allow_Trailing_Semicolon_U is null record;   -- incomplete struct

   --  The following functionality is provided:
   --  - Support for logging with log levels on stderr
   --  - File descriptor passing for socket-based activation
   --  - Daemon startup and status notification
   --  - Detection of systemd boots
   --  See sd-daemon(3) for more information.
   --

   --  Log levels for usage on stderr:
   --          fprintf(stderr, NOTICE "Hello World!\n");
   --  This is similar to printk() usage in the kernel.
   --

   --  The first passed file descriptor is fd 3
   --  Returns how many file descriptors have been passed, or a negative
   --  errno code on failure. Optionally, removes the $LISTEN_FDS and
   --  $LISTEN_PID file descriptors from the environment (recommended, but
   --  problematic in threaded environments). If r is the return value of
   --  this function you'll find the file descriptors passed as fds
   --  LISTEN_FDS_START to LISTEN_FDS_START+r-1. Returns a negative
   --  errno style error code on failure. This function call ensures that
   --  the FD_CLOEXEC flag is set for the passed file descriptors, to make
   --  sure they are not passed on to child processes. If FD_CLOEXEC shall
   --  not be set, the caller needs to unset it after this call for all file
   --  descriptors that are used.
   --  See listen_fds(3) for more information.
   --

   function Listen_Fds (Unset_Environment : Boolean := False) return Int ;

   function Listen_Fds_With_Names (Unset_Environment : Boolean := False; Names : System.Address) return Int;

   --  Helper call for identifying a passed file descriptor. Returns 1 if
   --  the file descriptor is a FIFO in the file system stored under the
   --  specified path, 0 otherwise. If path is NULL a path name check will
   --  not be done and the call only verifies if the file descriptor
   --  refers to a FIFO. Returns a negative errno style error code on
   --  failure.
   --  See is_fifo(3) for more information.
   --
   function Is_Fifo (Fd : GNAT.OS_Lib.File_Descriptor; Path : String) return Boolean;

   --  Helper call for identifying a passed file descriptor. Returns 1 if
   --  the file descriptor is a special character device on the file
   --  system stored under the specified path, 0 otherwise.
   --  If path is NULL a path name check will not be done and the call
   --  only verifies if the file descriptor refers to a special character.
   --  Returns a negative errno style error code on failure.
   --  See is_special(3) for more information.
   --
   function Is_Special (Fd : GNAT.OS_Lib.File_Descriptor; Path : String) return Boolean;


   --  Helper call for identifying a passed file descriptor. Returns 1 if
   --  the file descriptor is a socket of the specified family (AF_INET,
   --  ...) and type (SOCK_DGRAM, SOCK_STREAM, ...), 0 otherwise. If
   --  family is 0 a socket family check will not be done. If type is 0 a
   --  socket type check will not be done and the call only verifies if
   --  the file descriptor refers to a socket. If listening is > 0 it is
   --  verified that the socket is in listening mode. (i.e. listen() has
   --  been called) If listening is == 0 it is verified that the socket is
   --  not in listening mode. If listening is < 0 no listening mode check
   --  is done. Returns a negative errno style error code on failure.
   --  See is_socket(3) for more information.
   --
   function Is_Socket
     (Fd        : GNAT.OS_Lib.File_Descriptor;
      Family    : Int;
      C_Type    : Int;
      Listening : Int) return Boolean;


   --  Helper call for identifying a passed file descriptor. Returns 1 if
   --  the file descriptor is an Internet socket, of the specified family
   --  (either AF_INET or AF_INET6) and the specified type (SOCK_DGRAM,
   --  SOCK_STREAM, ...), 0 otherwise. If version is 0 a protocol version
   --  check is not done. If type is 0 a socket type check will not be
   --  done. If port is 0 a socket port check will not be done. The
   --  listening flag is used the same way as in is_socket(). Returns a
   --  negative errno style error code on failure.
   --  See is_socket_inet(3) for more information.
   --
   function Is_Socket_Inet
     (Fd        : GNAT.OS_Lib.File_Descriptor;
      Family    : Int;
      C_Type    : Int;
      Listening : Boolean;
      Port      : GNAT.Sockets.Port_Type) return Boolean;


   --  Helper call for identifying a passed file descriptor. Returns 1 if the
   --  file descriptor is an Internet socket of the specified type
   --  (SOCK_DGRAM, SOCK_STREAM, ...), and if the address of the socket is
   --  the same as the address specified by addr. The listening flag is used
   --  the same way as in is_socket(). Returns a negative errno style
   --  error code on failure.
   --  See is_socket_sockaddr(3) for more information.
   --

   function Is_Socket_Sockaddr
     (Fd        : GNAT.OS_Lib.File_Descriptor;
      C_Type    : GNAT.Sockets.Socket_Type;
      Addr      : GNAT.Sockets.Inet_Addr_Type;
      Listening : Boolean)
      return Boolean;

   --  Helper call for identifying a passed file descriptor. Returns 1 if
   --  the file descriptor is an AF_UNIX socket of the specified type
   --  (SOCK_DGRAM, SOCK_STREAM, ...) and path, 0 otherwise. If type is 0
   --  a socket type check will not be done. If path is NULL a socket path
   --  check will not be done. For normal AF_UNIX sockets set length to
   --  0. For abstract namespace sockets set length to the length of the
   --  socket name (including the initial 0 byte), and pass the full
   --  socket path in path (including the initial 0 byte). The listening
   --  flag is used the same way as in is_socket(). Returns a negative
   --  errno style error code on failure.
   --  See is_socket_unix(3) for more information.
   --

   function Is_Socket_Unix
     (Fd        : GNAT.OS_Lib.File_Descriptor;
      C_Type    : Int;
      Listening : Int;
      Path      : String;
      Length    : Unsigned_Long) return Boolean;

   --  Helper call for identifying a passed file descriptor. Returns 1 if
   --  the file descriptor is a POSIX Message Queue of the specified name,
   --  0 otherwise. If path is NULL a message queue name check is not
   --  done. Returns a negative errno style error code on failure.
   --  See is_mq(3) for more information.
   --

   function Is_Mq (Fd : GNAT.OS_Lib.File_Descriptor; Path : String) return Boolean;

   --  Informs systemd about changed daemon state. This takes a number of
   --  newline separated environment-style variable assignments in a
   --  string. The following variables are known:
   --     MAINPID=...  The main PID of a daemon, in case systemd did not
   --                  fork off the process itself. Example: "MAINPID=4711"
   --     READY=1      Tells systemd that daemon startup or daemon reload
   --                  is finished (only relevant for services of Type=notify).
   --                  The passed argument is a boolean "1" or "0". Since there
   --                  is little value in signaling non-readiness the only
   --                  value daemons should send is "READY=1".
   --     RELOADING=1  Tell systemd that the daemon began reloading its
   --                  configuration. When the configuration has been
   --                  reloaded completely, READY=1 should be sent to inform
   --                  systemd about this.
   --     STOPPING=1   Tells systemd that the daemon is about to go down.
   --     STATUS=...   Passes a single-line status string back to systemd
   --                  that describes the daemon state. This is free-form
   --                  and can be used for various purposes: general state
   --                  feedback, fsck-like programs could pass completion
   --                  percentages and failing programs could pass a human
   --                  readable error message. Example: "STATUS=Completed
   --                  66% of file system check..."
   --     ERRNO=...    If a daemon fails, the errno-style error code,
   --                  formatted as string. Example: "ERRNO=2" for ENOENT.
   --     BUSERROR=... If a daemon fails, the D-Bus error-style error
   --                  code. Example: "BUSERROR=org.freedesktop.DBus.Error.TimedOut"
   --     WATCHDOG=1   Tells systemd to update the watchdog timestamp.
   --                  Services using this feature should do this in
   --                  regular intervals. A watchdog framework can use the
   --                  timestamps to detect failed services. Also see
   --                  watchdog_enabled() below.
   --     WATCHDOG_USEC=...
   --                  Reset watchdog_usec value during runtime.
   --                  To reset watchdog_usec value, start the service again.
   --                  Example: "WATCHDOG_USEC=20000000"
   --     FDSTORE=1    Store the file descriptors passed along with the
   --                  message in the per-service file descriptor store,
   --                  and pass them to the main process again on next
   --                  invocation. This variable is only supported with
   --                  pid_notify_with_fds().
   --     FDSTOREREMOVE=1
   --                  Remove one or more file descriptors from the file
   --                  descriptor store, identified by the name specified
   --                  in FDNAME=, see below.
   --     FDNAME=      A name to assign to new file descriptors stored in the
   --                  file descriptor store, or the name of the file descriptors
   --                  to remove in case of FDSTOREREMOVE=1.
   --  Daemons can choose to send additional variables. However, it is
   --  recommended to prefix variable names not listed above with X_.
   --  Returns a negative errno-style error code on failure. Returns > 0
   --  if systemd could be notified, 0 if it couldn't possibly because
   --  systemd is not running.
   --  Example: When a daemon finished starting up, it could issue this
   --  call to notify systemd about it:
   --     notify(0, "READY=1");
   --  See notifyf() for more complete examples.
   --  See notify(3) for more information.
   --
   function Notify (State             : String;
                    Unset_Environment : Boolean := False) return Int;

   procedure Notify (State             : String;
                     Unset_Environment : Boolean := False);

   function Pid_Notify
     (Pid               : GNAT.OS_Lib.Process_Id;
      Unset_Environment : Boolean := False;
      State             : String) return Int;

   --  Similar to notifyf(), but send the message on behalf of another
   --  process, if the appropriate permissions are available.
   --
   function Pid_Notify_With_Fds
     (Pid               : GNAT.OS_Lib.Process_Id;
      Unset_Environment : Boolean := False;
      State             : String;
      Fds               : access Int;
      N_Fds             : Unsigned) return Int;

   --  Returns > 0 if the system was booted with systemd. Returns < 0 on
   --  error. Returns 0 if the system was not booted with systemd. Note
   --  that all of the functions above handle non-systemd boots just
   --  fine. You should NOT protect them with a call to this function. Also
   --  note that this function checks whether the system, not the user
   --  session is controlled by systemd. However the functions above work
   --  for both user and system services.
   --  See booted(3) for more information.
   --
   function Booted return Boolean;


   --  Returns True if the service manager expects watchdog keep-alive
   --  events to be sent regularly via notify(0, "WATCHDOG=1"). Returns
   --  False if it does not expect this. If the usec argument is non-NULL
   --  returns the watchdog timeout in µs after which the service manager
   --  will act on a process that has not sent a watchdog keep alive
   --  message. This function is useful to implement services that
   --  recognize automatically if they are being run under supervision of
   --  systemd with WatchdogSec= set. It is recommended for clients to
   --  generate keep-alive pings via notify(0, "WATCHDOG=1") every half
   --  of the returned time.
   --  See watchdog_enabled(3) for more information.
   --
   function Watchdog_Enabled (Unset_Environment : Boolean := False;
                              Watch_Time        : out Duration) return Boolean ;

end Systemd.Daemon;
