pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C.Strings;
with Interfaces.C.Extensions;

package Systemd.Bus.vtable is

   type sd_bus_vtable;
   type anon_62 is record
      element_size : aliased unsigned_long;  -- /usr/include/systemd/sd-bus-vtable.h:59
   end record
   with Convention => C_Pass_By_Copy;
   type anon_63 is record
      member : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:62
      signature : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:63
      result : Interfaces.C.Strings.chars_ptr;  -- /usr/include/systemd/sd-bus-vtable.h:64
      handler : Systemd.Bus.sd_bus_message_handler_t;  -- /usr/include/systemd/sd-bus-vtable.h:65
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
      get : Systemd.bus.sd_bus_property_get_t;  -- /usr/include/systemd/sd-bus-vtable.h:75
      set : Systemd.bus.sd_bus_property_set_t;  -- /usr/include/systemd/sd-bus-vtable.h:76
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

end Systemd.Bus.vtable;
