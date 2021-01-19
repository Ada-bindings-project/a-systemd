pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;



limited with Systemd.Low_Level.systemd_sd_event_h;

package Systemd.Low_Level.systemd_sd_device_h is

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

   type sd_device is null record;   -- incomplete struct

   type sd_device_enumerator is null record;   -- incomplete struct

   type sd_device_monitor is null record;   -- incomplete struct

  -- callback  
   type sd_device_monitor_handler_t is access function
        (arg1 : access sd_device_monitor;
         arg2 : access sd_device;
         arg3 : System.Address) return int
   with Convention => C;  -- /usr/include/systemd/sd-device.h:36

  -- device  
   function sd_device_ref (device : access sd_device) return access sd_device  -- /usr/include/systemd/sd-device.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_ref";

   function sd_device_unref (device : access sd_device) return access sd_device  -- /usr/include/systemd/sd-device.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_unref";

   function sd_device_new_from_syspath (ret : System.Address; syspath : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_new_from_syspath";

   function sd_device_new_from_devnum
     (ret : System.Address;
      c_type : char;
      devnum : dev_t) return int  -- /usr/include/systemd/sd-device.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_new_from_devnum";

   function sd_device_new_from_subsystem_sysname
     (ret : System.Address;
      subsystem : Interfaces.C.Strings.chars_ptr;
      sysname : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_new_from_subsystem_sysname";

   function sd_device_new_from_device_id (ret : System.Address; id : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_new_from_device_id";

   function sd_device_get_parent (child : access sd_device; ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_parent";

   function sd_device_get_parent_with_subsystem_devtype
     (child : access sd_device;
      subsystem : Interfaces.C.Strings.chars_ptr;
      devtype : Interfaces.C.Strings.chars_ptr;
      ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_parent_with_subsystem_devtype";

   function sd_device_get_syspath (device : access sd_device; ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_syspath";

   function sd_device_get_subsystem (device : access sd_device; ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_subsystem";

   function sd_device_get_devtype (device : access sd_device; ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_devtype";

   function sd_device_get_devnum (device : access sd_device; devnum : access dev_t) return int  -- /usr/include/systemd/sd-device.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_devnum";

   function sd_device_get_ifindex (device : access sd_device; ifindex : access int) return int  -- /usr/include/systemd/sd-device.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_ifindex";

   function sd_device_get_driver (device : access sd_device; ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_driver";

   function sd_device_get_devpath (device : access sd_device; ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_devpath";

   function sd_device_get_devname (device : access sd_device; ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_devname";

   function sd_device_get_sysname (device : access sd_device; ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_sysname";

   function sd_device_get_sysnum (device : access sd_device; ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_sysnum";

   function sd_device_get_is_initialized (device : access sd_device) return int  -- /usr/include/systemd/sd-device.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_is_initialized";

   function sd_device_get_usec_since_initialized (device : access sd_device; usec : access unsigned_long) return int  -- /usr/include/systemd/sd-device.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_usec_since_initialized";

   function sd_device_get_tag_first (device : access sd_device) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-device.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_tag_first";

   function sd_device_get_tag_next (device : access sd_device) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-device.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_tag_next";

   function sd_device_get_devlink_first (device : access sd_device) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-device.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_devlink_first";

   function sd_device_get_devlink_next (device : access sd_device) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-device.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_devlink_next";

   function sd_device_get_property_first (device : access sd_device; value : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-device.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_property_first";

   function sd_device_get_property_next (device : access sd_device; value : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-device.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_property_next";

   function sd_device_get_sysattr_first (device : access sd_device) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-device.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_sysattr_first";

   function sd_device_get_sysattr_next (device : access sd_device) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-device.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_sysattr_next";

   function sd_device_has_tag (device : access sd_device; tag : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_has_tag";

   function sd_device_get_property_value
     (device : access sd_device;
      key : Interfaces.C.Strings.chars_ptr;
      value : System.Address) return int  -- /usr/include/systemd/sd-device.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_property_value";

   function sd_device_get_sysattr_value
     (device : access sd_device;
      sysattr : Interfaces.C.Strings.chars_ptr;
      u_value : System.Address) return int  -- /usr/include/systemd/sd-device.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_get_sysattr_value";

   function sd_device_set_sysattr_value
     (device : access sd_device;
      sysattr : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_set_sysattr_value";

  -- device enumerator  
   function sd_device_enumerator_new (ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_new";

   function sd_device_enumerator_ref (enumerator : access sd_device_enumerator) return access sd_device_enumerator  -- /usr/include/systemd/sd-device.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_ref";

   function sd_device_enumerator_unref (enumerator : access sd_device_enumerator) return access sd_device_enumerator  -- /usr/include/systemd/sd-device.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_unref";

   function sd_device_enumerator_get_device_first (enumerator : access sd_device_enumerator) return access sd_device  -- /usr/include/systemd/sd-device.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_get_device_first";

   function sd_device_enumerator_get_device_next (enumerator : access sd_device_enumerator) return access sd_device  -- /usr/include/systemd/sd-device.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_get_device_next";

   function sd_device_enumerator_get_subsystem_first (enumerator : access sd_device_enumerator) return access sd_device  -- /usr/include/systemd/sd-device.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_get_subsystem_first";

   function sd_device_enumerator_get_subsystem_next (enumerator : access sd_device_enumerator) return access sd_device  -- /usr/include/systemd/sd-device.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_get_subsystem_next";

   function sd_device_enumerator_add_match_subsystem
     (enumerator : access sd_device_enumerator;
      subsystem : Interfaces.C.Strings.chars_ptr;
      match : int) return int  -- /usr/include/systemd/sd-device.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_add_match_subsystem";

   function sd_device_enumerator_add_match_sysattr
     (enumerator : access sd_device_enumerator;
      sysattr : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.C.Strings.chars_ptr;
      match : int) return int  -- /usr/include/systemd/sd-device.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_add_match_sysattr";

   function sd_device_enumerator_add_match_property
     (enumerator : access sd_device_enumerator;
      property : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_add_match_property";

   function sd_device_enumerator_add_match_sysname (enumerator : access sd_device_enumerator; sysname : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_add_match_sysname";

   function sd_device_enumerator_add_match_tag (enumerator : access sd_device_enumerator; tag : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_add_match_tag";

   function sd_device_enumerator_add_match_parent (enumerator : access sd_device_enumerator; parent : access sd_device) return int  -- /usr/include/systemd/sd-device.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_add_match_parent";

   function sd_device_enumerator_allow_uninitialized (enumerator : access sd_device_enumerator) return int  -- /usr/include/systemd/sd-device.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_allow_uninitialized";

  -- device monitor  
   function sd_device_monitor_new (ret : System.Address) return int  -- /usr/include/systemd/sd-device.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_new";

   function sd_device_monitor_ref (m : access sd_device_monitor) return access sd_device_monitor  -- /usr/include/systemd/sd-device.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_ref";

   function sd_device_monitor_unref (m : access sd_device_monitor) return access sd_device_monitor  -- /usr/include/systemd/sd-device.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_unref";

   function sd_device_monitor_set_receive_buffer_size (m : access sd_device_monitor; size : unsigned_long) return int  -- /usr/include/systemd/sd-device.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_set_receive_buffer_size";

   function sd_device_monitor_attach_event (m : access sd_device_monitor; event : access Systemd.Low_Level.systemd_sd_event_h.sd_event) return int  -- /usr/include/systemd/sd-device.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_attach_event";

   function sd_device_monitor_detach_event (m : access sd_device_monitor) return int  -- /usr/include/systemd/sd-device.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_detach_event";

   function sd_device_monitor_get_event (m : access sd_device_monitor) return access Systemd.Low_Level.systemd_sd_event_h.sd_event  -- /usr/include/systemd/sd-device.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_get_event";

   function sd_device_monitor_get_event_source (m : access sd_device_monitor) return access Systemd.Low_Level.systemd_sd_event_h.sd_event_source  -- /usr/include/systemd/sd-device.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_get_event_source";

   function sd_device_monitor_start
     (m : access sd_device_monitor;
      callback : sd_device_monitor_handler_t;
      userdata : System.Address) return int  -- /usr/include/systemd/sd-device.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_start";

   function sd_device_monitor_stop (m : access sd_device_monitor) return int  -- /usr/include/systemd/sd-device.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_stop";

   function sd_device_monitor_filter_add_match_subsystem_devtype
     (m : access sd_device_monitor;
      subsystem : Interfaces.C.Strings.chars_ptr;
      devtype : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_filter_add_match_subsystem_devtype";

   function sd_device_monitor_filter_add_match_tag (m : access sd_device_monitor; tag : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-device.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_filter_add_match_tag";

   function sd_device_monitor_filter_update (m : access sd_device_monitor) return int  -- /usr/include/systemd/sd-device.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_filter_update";

   function sd_device_monitor_filter_remove (m : access sd_device_monitor) return int  -- /usr/include/systemd/sd-device.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_filter_remove";

   procedure sd_device_unrefp (p : System.Address)  -- /usr/include/systemd/sd-device.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_unrefp";

   procedure sd_device_enumerator_unrefp (p : System.Address)  -- /usr/include/systemd/sd-device.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_enumerator_unrefp";

   procedure sd_device_monitor_unrefp (p : System.Address)  -- /usr/include/systemd/sd-device.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "sd_device_monitor_unrefp";

end Systemd.Low_Level.systemd_sd_device_h;
