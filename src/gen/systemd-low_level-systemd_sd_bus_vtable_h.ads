pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with Systemd.Low_Level.systemd_sd_bus_h;

with Interfaces.C.Extensions;

package Systemd.Low_Level.systemd_sd_bus_vtable_h is

   --  arg-macro: function SD_BUS_VTABLE_CAPABILITY (x)
   --    return (uint64_t) (((x)+1) and 16#FFFF#) << 40;
   --  arg-macro: procedure SD_BUS_VTABLE_START (_flags)
   --    { .type := _SD_BUS_VTABLE_START, .flags := _flags, .x := { .start := { .element_size := sizeof(sd_bus_vtable) }, }, }
   --  arg-macro: procedure SD_BUS_METHOD_WITH_OFFSET (_member, _signature, _result, _handler, _offset, _flags)
   --    { .type := _SD_BUS_VTABLE_METHOD, .flags := _flags, .x := { .method := { .member := _member, .signature := _signature, .result := _result, .handler := _handler, .offset := _offset, }, }, }
   --  arg-macro: procedure SD_BUS_METHOD (_member, _signature, _result, _handler, _flags)
   --    SD_BUS_METHOD_WITH_OFFSET(_member, _signature, _result, _handler, 0, _flags)
   --  arg-macro: procedure SD_BUS_SIGNAL (_member, _signature, _flags)
   --    { .type := _SD_BUS_VTABLE_SIGNAL, .flags := _flags, .x := { .signal := { .member := _member, .signature := _signature, }, }, }
   --  arg-macro: procedure SD_BUS_PROPERTY (_member, _signature, _get, _offset, _flags)
   --    { .type := _SD_BUS_VTABLE_PROPERTY, .flags := _flags, .x := { .property := { .member := _member, .signature := _signature, .get := _get, .set := NULL, .offset := _offset, }, }, }
   --  arg-macro: procedure SD_BUS_WRITABLE_PROPERTY (_member, _signature, _get, _set, _offset, _flags)
   --    { .type := _SD_BUS_VTABLE_WRITABLE_PROPERTY, .flags := _flags, .x := { .property := { .member := _member, .signature := _signature, .get := _get, .set := _set, .offset := _offset, }, }, }
   --  unsupported macro: SD_BUS_VTABLE_END { .type = _SD_BUS_VTABLE_END, .flags = 0, .x = { { 0 } }, }
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

  -- SPDX-License-Identifier: LGPL-2.1+  
   type sd_bus_vtable;
   type anon_62 is record
      element_size : aliased unsigned_long;  -- /usr/include/systemd/sd-bus-vtable.h:59
   end record
   with Convention => C_Pass_By_Copy;
   type anon_63 is record
      member : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:62
      signature : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:63
      result : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:64
      handler : Systemd.Low_Level.systemd_sd_bus_h.sd_bus_message_handler_t;  -- /usr/include/systemd/sd-bus-vtable.h:65
      offset : aliased unsigned_long;  -- /usr/include/systemd/sd-bus-vtable.h:66
   end record
   with Convention => C_Pass_By_Copy;
   type anon_64 is record
      member : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:69
      signature : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:70
   end record
   with Convention => C_Pass_By_Copy;
   type anon_65 is record
      member : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:73
      signature : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:74
      get : Systemd.Low_Level.systemd_sd_bus_h.sd_bus_property_get_t;  -- /usr/include/systemd/sd-bus-vtable.h:75
      set : Systemd.Low_Level.systemd_sd_bus_h.sd_bus_property_set_t;  -- /usr/include/systemd/sd-bus-vtable.h:76
      offset : aliased unsigned_long;  -- /usr/include/systemd/sd-bus-vtable.h:77
   end record
   with Convention => C_Pass_By_Copy;
   type anon_61 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            start : aliased anon_62;  -- /usr/include/systemd/sd-bus-vtable.h:60
         when 1 =>
            method : aliased anon_63;  -- /usr/include/systemd/sd-bus-vtable.h:67
         when 2 =>
            signal : aliased anon_64;  -- /usr/include/systemd/sd-bus-vtable.h:71
         when others =>
            property : aliased anon_65;  -- /usr/include/systemd/sd-bus-vtable.h:78
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type sd_bus_vtable is record
      c_type : aliased unsigned_char;  -- /usr/include/systemd/sd-bus-vtable.h:55
      flags : Extensions.Unsigned_56;  -- /usr/include/systemd/sd-bus-vtable.h:56
      x : aliased anon_61;  -- /usr/include/systemd/sd-bus-vtable.h:79
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True;  -- /usr/include/systemd/sd-bus-vtable.h:51

end Systemd.Low_Level.systemd_sd_bus_vtable_h;
