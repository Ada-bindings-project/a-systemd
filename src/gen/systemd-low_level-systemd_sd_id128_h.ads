pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;

package Systemd.Low_Level.systemd_sd_id128_h is

   SD_ID128_STRING_MAX : constant := 33;  --  /usr/include/systemd/sd-id128.h:36
   --  unsupported macro: SD_ID128_ARRAY(v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15) { .bytes = { 0x ##v0, 0x ##v1, 0x ##v2, 0x ##v3, 0x ##v4, 0x ##v5, 0x ##v6, 0x ##v7, 0x ##v8, 0x ##v9, 0x ##v10, 0x ##v11, 0x ##v12, 0x ##v13, 0x ##v14, 0x ##v15 }}
   --  arg-macro: function SD_ID128_MAKE (v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15)
   --    return (const sd_id128_t) SD_ID128_ARRAY(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);

   SD_ID128_FORMAT_STR : aliased constant String := "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x" & ASCII.NUL;  --  /usr/include/systemd/sd-id128.h:63
   --  arg-macro: function SD_ID128_FORMAT_VAL (x)
   --    return x).bytes(0), (x).bytes(1), (x).bytes(2), (x).bytes(3), (x).bytes(4), (x).bytes(5), (x).bytes(6), (x).bytes(7), (x).bytes(8), (x).bytes(9), (x).bytes(10), (x).bytes(11), (x).bytes(12), (x).bytes(13), (x).bytes(14), (x).bytes(15;
   --  arg-macro: function SD_ID128_CONST_STR (x)
   --    return (const char(SD_ID128_STRING_MAX)) { ((x).bytes(0) >> 4) >= 10 ? 'a' + ((x).bytes(0) >> 4) - 10 : '0' + ((x).bytes(0) >> 4), ((x).bytes(0) and 15) >= 10 ? 'a' + ((x).bytes(0) and 15) - 10 : '0' + ((x).bytes(0) and 15), ((x).bytes(1) >> 4) >= 10 ? 'a' + ((x).bytes(1) >> 4) - 10 : '0' + ((x).bytes(1) >> 4), ((x).bytes(1) and 15) >= 10 ? 'a' + ((x).bytes(1) and 15) - 10 : '0' + ((x).bytes(1) and 15), ((x).bytes(2) >> 4) >= 10 ? 'a' + ((x).bytes(2) >> 4) - 10 : '0' + ((x).bytes(2) >> 4), ((x).bytes(2) and 15) >= 10 ? 'a' + ((x).bytes(2) and 15) - 10 : '0' + ((x).bytes(2) and 15), ((x).bytes(3) >> 4) >= 10 ? 'a' + ((x).bytes(3) >> 4) - 10 : '0' + ((x).bytes(3) >> 4), ((x).bytes(3) and 15) >= 10 ? 'a' + ((x).bytes(3) and 15) - 10 : '0' + ((x).bytes(3) and 15), ((x).bytes(4) >> 4) >= 10 ? 'a' + ((x).bytes(4) >> 4) - 10 : '0' + ((x).bytes(4) >> 4), ((x).bytes(4) and 15) >= 10 ? 'a' + ((x).bytes(4) and 15) - 10 : '0' + ((x).bytes(4) and 15), ((x).bytes(5) >> 4) >= 10 ? 'a' + ((x).bytes(5) >> 4) - 10 : '0' + ((x).bytes(5) >> 4), ((x).bytes(5) and 15) >= 10 ? 'a' + ((x).bytes(5) and 15) - 10 : '0' + ((x).bytes(5) and 15), ((x).bytes(6) >> 4) >= 10 ? 'a' + ((x).bytes(6) >> 4) - 10 : '0' + ((x).bytes(6) >> 4), ((x).bytes(6) and 15) >= 10 ? 'a' + ((x).bytes(6) and 15) - 10 : '0' + ((x).bytes(6) and 15), ((x).bytes(7) >> 4) >= 10 ? 'a' + ((x).bytes(7) >> 4) - 10 : '0' + ((x).bytes(7) >> 4), ((x).bytes(7) and 15) >= 10 ? 'a' + ((x).bytes(7) and 15) - 10 : '0' + ((x).bytes(7) and 15), ((x).bytes(8) >> 4) >= 10 ? 'a' + ((x).bytes(8) >> 4) - 10 : '0' + ((x).bytes(8) >> 4), ((x).bytes(8) and 15) >= 10 ? 'a' + ((x).bytes(8) and 15) - 10 : '0' + ((x).bytes(8) and 15), ((x).bytes(9) >> 4) >= 10 ? 'a' + ((x).bytes(9) >> 4) - 10 : '0' + ((x).bytes(9) >> 4), ((x).bytes(9) and 15) >= 10 ? 'a' + ((x).bytes(9) and 15) - 10 : '0' + ((x).bytes(9) and 15), ((x).bytes(10) >> 4) >= 10 ? 'a' + ((x).bytes(10) >> 4) - 10 : '0' + ((x).bytes(10) >> 4), ((x).bytes(10) and 15) >= 10 ? 'a' + ((x).bytes(10) and 15) - 10 : '0' + ((x).bytes(10) and 15), ((x).bytes(11) >> 4) >= 10 ? 'a' + ((x).bytes(11) >> 4) - 10 : '0' + ((x).bytes(11) >> 4), ((x).bytes(11) and 15) >= 10 ? 'a' + ((x).bytes(11) and 15) - 10 : '0' + ((x).bytes(11) and 15), ((x).bytes(12) >> 4) >= 10 ? 'a' + ((x).bytes(12) >> 4) - 10 : '0' + ((x).bytes(12) >> 4), ((x).bytes(12) and 15) >= 10 ? 'a' + ((x).bytes(12) and 15) - 10 : '0' + ((x).bytes(12) and 15), ((x).bytes(13) >> 4) >= 10 ? 'a' + ((x).bytes(13) >> 4) - 10 : '0' + ((x).bytes(13) >> 4), ((x).bytes(13) and 15) >= 10 ? 'a' + ((x).bytes(13) and 15) - 10 : '0' + ((x).bytes(13) and 15), ((x).bytes(14) >> 4) >= 10 ? 'a' + ((x).bytes(14) >> 4) - 10 : '0' + ((x).bytes(14) >> 4), ((x).bytes(14) and 15) >= 10 ? 'a' + ((x).bytes(14) and 15) - 10 : '0' + ((x).bytes(14) and 15), ((x).bytes(15) >> 4) >= 10 ? 'a' + ((x).bytes(15) >> 4) - 10 : '0' + ((x).bytes(15) >> 4), ((x).bytes(15) and 15) >= 10 ? 'a' + ((x).bytes(15) and 15) - 10 : '0' + ((x).bytes(15) and 15), 0 };
   --  unsupported macro: SD_ID128_MAKE_STR(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p) #a #b #c #d #e #f #g #h #i #j #k #l #m #n #o #p
   --  unsupported macro: SD_ID128_NULL ((const sd_id128_t) { .qwords = { 0, 0 }})
   --  unsupported macro: SD_ID128_ALLF ((const sd_id128_t) { .qwords = { UINT64_C(0xFFFFFFFFFFFFFFFF), UINT64_C(0xFFFFFFFFFFFFFFFF) }})

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

  -- 128-bit ID APIs. See sd-id128(3) for more information.  
  -- SPDX-License-Identifier: LGPL-2.1+  
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

  -- 128-bit ID APIs. See sd-id128(3) for more information.  
   type sd_id128;
   subtype sd_id128_t is sd_id128;  -- /usr/include/systemd/sd-id128.h:29

   type sd_id128_array1934 is array (0 .. 15) of aliased unsigned_char;
   type sd_id128_array1935 is array (0 .. 1) of aliased unsigned_long;
   type sd_id128 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            bytes : aliased sd_id128_array1934;  -- /usr/include/systemd/sd-id128.h:32
         when others =>
            qwords : aliased sd_id128_array1935;  -- /usr/include/systemd/sd-id128.h:33
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/systemd/sd-id128.h:31

   function sd_id128_to_string (id : sd_id128_t; s : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/systemd/sd-id128.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_to_string";

   function sd_id128_from_string (s : Interfaces.C.Strings.chars_ptr; ret : access sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_from_string";

   function sd_id128_randomize (ret : access sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_randomize";

   function sd_id128_get_machine (ret : access sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_get_machine";

   function sd_id128_get_boot (ret : access sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_get_boot";

   function sd_id128_get_invocation (ret : access sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_get_invocation";

   function sd_id128_get_machine_app_specific (app_id : sd_id128_t; ret : access sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_get_machine_app_specific";

   function sd_id128_get_boot_app_specific (app_id : sd_id128_t; ret : access sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_get_boot_app_specific";

  -- Note that SD_ID128_FORMAT_VAL will evaluate the passed argument 16
  -- * times. It is hence not a good idea to call this macro with an
  -- * expensive function as parameter or an expression with side
  -- * effects  

   function sd_id128_equal (a : sd_id128_t; b : sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_equal";

   function sd_id128_is_null (a : sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_is_null";

   function sd_id128_is_allf (a : sd_id128_t) return int  -- /usr/include/systemd/sd-id128.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "sd_id128_is_allf";

end Systemd.Low_Level.systemd_sd_id128_h;
