pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

package Systemd.Low_Level.systemd_sd_hwdb_h is

   --  arg-macro: procedure SD_HWDB_FOREACH_PROPERTY (hwdb, modalias, key, value)
   --    if (sd_hwdb_seek(hwdb, modalias) < 0) { } else while (sd_hwdb_enumerate(hwdb, and(key), and(value)) > 0)
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

   type sd_hwdb is null record;   -- incomplete struct

   function sd_hwdb_ref (hwdb : access sd_hwdb) return access sd_hwdb  -- /usr/include/systemd/sd-hwdb.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "sd_hwdb_ref";

   function sd_hwdb_unref (hwdb : access sd_hwdb) return access sd_hwdb  -- /usr/include/systemd/sd-hwdb.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "sd_hwdb_unref";

   function sd_hwdb_new (ret : System.Address) return int  -- /usr/include/systemd/sd-hwdb.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "sd_hwdb_new";

   function sd_hwdb_get
     (hwdb : access sd_hwdb;
      modalias : Interfaces.C.Strings.chars_ptr;
      key : Interfaces.C.Strings.chars_ptr;
      value : System.Address) return int  -- /usr/include/systemd/sd-hwdb.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "sd_hwdb_get";

   function sd_hwdb_seek (hwdb : access sd_hwdb; modalias : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/systemd/sd-hwdb.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "sd_hwdb_seek";

   function sd_hwdb_enumerate
     (hwdb : access sd_hwdb;
      key : System.Address;
      value : System.Address) return int  -- /usr/include/systemd/sd-hwdb.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "sd_hwdb_enumerate";

  -- the inverse condition avoids ambiguity of dangling 'else' after the macro  
   procedure sd_hwdb_unrefp (p : System.Address)  -- /usr/include/systemd/sd-hwdb.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "sd_hwdb_unrefp";

end Systemd.Low_Level.systemd_sd_hwdb_h;
