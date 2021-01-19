pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;


with Systemd.Low_Level.systemd_sd_id128_h;


package Systemd.Low_Level.systemd_sd_journal_h is

   --  unsupported macro: sd_journal_print(priority,...) sd_journal_print_with_location(priority, "CODE_FILE=" __FILE__, "CODE_LINE=" _SD_STRINGIFY(__LINE__), __func__, __VA_ARGS__)
   --  arg-macro: procedure sd_journal_printv (priority, format, ap)
   --    sd_journal_printv_with_location(priority, "CODE_FILE=" __FILE__, & "CODE_LINE=" _SD_STRINGIFY(__LINE__), __func__, format, ap)
   --  unsupported macro: sd_journal_send(...) sd_journal_send_with_location("CODE_FILE=" __FILE__, "CODE_LINE=" _SD_STRINGIFY(__LINE__), __func__, __VA_ARGS__)
   --  arg-macro: procedure sd_journal_sendv (iovec, n)
   --    sd_journal_sendv_with_location("CODE_FILE=" __FILE__, & "CODE_LINE=" _SD_STRINGIFY(__LINE__), __func__, iovec, n)
   --  arg-macro: procedure sd_journal_perror (message)
   --    sd_journal_perror_with_location("CODE_FILE=" __FILE__, & "CODE_LINE=" _SD_STRINGIFY(__LINE__), __func__, message)
   --  arg-macro: procedure SD_JOURNAL_FOREACH (j)
   --    if (sd_journal_seek_head(j) < 0) { } else while (sd_journal_next(j) > 0)
   --  arg-macro: procedure SD_JOURNAL_FOREACH_BACKWARDS (j)
   --    if (sd_journal_seek_tail(j) < 0) { } else while (sd_journal_previous(j) > 0)
   --  arg-macro: procedure SD_JOURNAL_FOREACH_DATA (j, data, l)
   --    for (sd_journal_restart_data(j); sd_journal_enumerate_data((j), and(data), and(l)) > 0; )
   --  arg-macro: procedure SD_JOURNAL_FOREACH_UNIQUE (j, data, l)
   --    for (sd_journal_restart_unique(j); sd_journal_enumerate_unique((j), and(data), and(l)) > 0; )
   --  arg-macro: procedure SD_JOURNAL_FOREACH_FIELD (j, field)
   --    for (sd_journal_restart_fields(j); sd_journal_enumerate_fields((j), and(field)) > 0; )
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

  -- Journal APIs. See sd-journal(3) for more information.  
  -- Write to daemon  
   function sd_journal_print (priority : int; format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-journal.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_print";

   function sd_journal_printv
     (priority : int;
      format : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /usr/include/systemd/sd-journal.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_printv";

   function sd_journal_send (format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-journal.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_send";

   function sd_journal_sendv (iov : access constant System.Address; n : int) return int  -- /usr/include/systemd/sd-journal.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_sendv";

   function sd_journal_perror (message : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-journal.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_perror";

  -- Used by the macros below. You probably don't want to call this directly.  
   function sd_journal_print_with_location
     (priority : int;
      file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.C.Strings.chars_ptr;
      func : Interfaces.C.Strings.chars_ptr;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-journal.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_print_with_location";

   function sd_journal_printv_with_location
     (priority : int;
      file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.C.Strings.chars_ptr;
      func : Interfaces.C.Strings.chars_ptr;
      format : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /usr/include/systemd/sd-journal.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_printv_with_location";

   function sd_journal_send_with_location
     (file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.C.Strings.chars_ptr;
      func : Interfaces.C.Strings.chars_ptr;
      format : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /usr/include/systemd/sd-journal.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_send_with_location";

   function sd_journal_sendv_with_location
     (file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.C.Strings.chars_ptr;
      func : Interfaces.C.Strings.chars_ptr;
      iov : access constant System.Address;
      n : int) return int  -- /usr/include/systemd/sd-journal.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_sendv_with_location";

   function sd_journal_perror_with_location
     (file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.C.Strings.chars_ptr;
      func : Interfaces.C.Strings.chars_ptr;
      message : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-journal.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_perror_with_location";

  -- implicitly add code location to messages sent, if this is enabled  
   function sd_journal_stream_fd
     (identifier : Interfaces.C.Strings.chars_ptr;
      priority : int;
      level_prefix : int) return int  -- /usr/include/systemd/sd-journal.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_stream_fd";

  -- Browse journal stream  
   type sd_journal is null record;   -- incomplete struct

  -- Open flags  
  -- deprecated name  
  -- Wakeup event types  
   function sd_journal_open (ret : System.Address; flags : int) return int  -- /usr/include/systemd/sd-journal.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_open";

   function sd_journal_open_directory
     (ret : System.Address;
      path : Interfaces.C.Strings.chars_ptr;
      flags : int) return int  -- /usr/include/systemd/sd-journal.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_open_directory";

   function sd_journal_open_directory_fd
     (ret : System.Address;
      fd : int;
      flags : int) return int  -- /usr/include/systemd/sd-journal.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_open_directory_fd";

   function sd_journal_open_files
     (ret : System.Address;
      paths : System.Address;
      flags : int) return int  -- /usr/include/systemd/sd-journal.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_open_files";

   function sd_journal_open_files_fd
     (ret : System.Address;
      fds : access int;
      n_fds : unsigned;
      flags : int) return int  -- /usr/include/systemd/sd-journal.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_open_files_fd";

  -- deprecated  
   function sd_journal_open_container
     (ret : System.Address;
      machine : Interfaces.C.Strings.chars_ptr;
      flags : int) return int  -- /usr/include/systemd/sd-journal.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_open_container";

   procedure sd_journal_close (j : access sd_journal)  -- /usr/include/systemd/sd-journal.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_close";

   function sd_journal_previous (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_previous";

   function sd_journal_next (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_next";

   function sd_journal_previous_skip (j : access sd_journal; skip : unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_previous_skip";

   function sd_journal_next_skip (j : access sd_journal; skip : unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_next_skip";

   function sd_journal_get_realtime_usec (j : access sd_journal; ret : access unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_realtime_usec";

   function sd_journal_get_monotonic_usec
     (j : access sd_journal;
      ret : access unsigned_long;
      ret_boot_id : access Systemd.Low_Level.systemd_sd_id128_h.sd_id128_t) return int  -- /usr/include/systemd/sd-journal.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_monotonic_usec";

   function sd_journal_set_data_threshold (j : access sd_journal; sz : unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_set_data_threshold";

   function sd_journal_get_data_threshold (j : access sd_journal; sz : access unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_data_threshold";

   function sd_journal_get_data
     (j : access sd_journal;
      field : Interfaces.C.Strings.chars_ptr;
      data : System.Address;
      l : access unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_data";

   function sd_journal_enumerate_data
     (j : access sd_journal;
      data : System.Address;
      l : access unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_enumerate_data";

   procedure sd_journal_restart_data (j : access sd_journal)  -- /usr/include/systemd/sd-journal.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_restart_data";

   function sd_journal_add_match
     (j : access sd_journal;
      data : System.Address;
      size : unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_add_match";

   function sd_journal_add_disjunction (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_add_disjunction";

   function sd_journal_add_conjunction (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_add_conjunction";

   procedure sd_journal_flush_matches (j : access sd_journal)  -- /usr/include/systemd/sd-journal.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_flush_matches";

   function sd_journal_seek_head (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_seek_head";

   function sd_journal_seek_tail (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_seek_tail";

   function sd_journal_seek_monotonic_usec
     (j : access sd_journal;
      boot_id : Systemd.Low_Level.systemd_sd_id128_h.sd_id128_t;
      usec : unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_seek_monotonic_usec";

   function sd_journal_seek_realtime_usec (j : access sd_journal; usec : unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_seek_realtime_usec";

   function sd_journal_seek_cursor (j : access sd_journal; cursor : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-journal.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_seek_cursor";

   function sd_journal_get_cursor (j : access sd_journal; cursor : System.Address) return int  -- /usr/include/systemd/sd-journal.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_cursor";

   function sd_journal_test_cursor (j : access sd_journal; cursor : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-journal.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_test_cursor";

   function sd_journal_get_cutoff_realtime_usec
     (j : access sd_journal;
      from : access unsigned_long;
      to : access unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_cutoff_realtime_usec";

   function sd_journal_get_cutoff_monotonic_usec
     (j : access sd_journal;
      boot_id : Systemd.Low_Level.systemd_sd_id128_h.sd_id128_t;
      from : access unsigned_long;
      to : access unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_cutoff_monotonic_usec";

   function sd_journal_get_usage (j : access sd_journal; bytes : access unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_usage";

   function sd_journal_query_unique (j : access sd_journal; field : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-journal.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_query_unique";

   function sd_journal_enumerate_unique
     (j : access sd_journal;
      data : System.Address;
      l : access unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_enumerate_unique";

   procedure sd_journal_restart_unique (j : access sd_journal)  -- /usr/include/systemd/sd-journal.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_restart_unique";

   function sd_journal_enumerate_fields (j : access sd_journal; field : System.Address) return int  -- /usr/include/systemd/sd-journal.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_enumerate_fields";

   procedure sd_journal_restart_fields (j : access sd_journal)  -- /usr/include/systemd/sd-journal.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_restart_fields";

   function sd_journal_get_fd (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_fd";

   function sd_journal_get_events (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_events";

   function sd_journal_get_timeout (j : access sd_journal; timeout_usec : access unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_timeout";

   function sd_journal_process (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_process";

   function sd_journal_wait (j : access sd_journal; timeout_usec : unsigned_long) return int  -- /usr/include/systemd/sd-journal.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_wait";

   function sd_journal_reliable_fd (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_reliable_fd";

   function sd_journal_get_catalog (j : access sd_journal; text : System.Address) return int  -- /usr/include/systemd/sd-journal.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_catalog";

   function sd_journal_get_catalog_for_message_id (id : Systemd.Low_Level.systemd_sd_id128_h.sd_id128_t; text : System.Address) return int  -- /usr/include/systemd/sd-journal.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_get_catalog_for_message_id";

   function sd_journal_has_runtime_files (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_has_runtime_files";

   function sd_journal_has_persistent_files (j : access sd_journal) return int  -- /usr/include/systemd/sd-journal.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_has_persistent_files";

  -- The inverse condition avoids ambiguity of dangling 'else' after the macro  
  -- The inverse condition avoids ambiguity of dangling 'else' after the macro  
  -- Iterate through the data fields of the current journal entry  
  -- Iterate through the all known values of a specific field  
  -- Iterate through all known field names  
   procedure sd_journal_closep (p : System.Address)  -- /usr/include/systemd/sd-journal.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "sd_journal_closep";

end Systemd.Low_Level.systemd_sd_journal_h;
