pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package Systemd.Low_Level.systemd_sd_bus_protocol_h is

   SD_BUS_ERROR_FAILED : aliased constant String := "org.freedesktop.DBus.Error.Failed" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:65
   SD_BUS_ERROR_NO_MEMORY : aliased constant String := "org.freedesktop.DBus.Error.NoMemory" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:66
   SD_BUS_ERROR_SERVICE_UNKNOWN : aliased constant String := "org.freedesktop.DBus.Error.ServiceUnknown" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:67
   SD_BUS_ERROR_NAME_HAS_NO_OWNER : aliased constant String := "org.freedesktop.DBus.Error.NameHasNoOwner" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:68
   SD_BUS_ERROR_NO_REPLY : aliased constant String := "org.freedesktop.DBus.Error.NoReply" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:69
   SD_BUS_ERROR_IO_ERROR : aliased constant String := "org.freedesktop.DBus.Error.IOError" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:70
   SD_BUS_ERROR_BAD_ADDRESS : aliased constant String := "org.freedesktop.DBus.Error.BadAddress" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:71
   SD_BUS_ERROR_NOT_SUPPORTED : aliased constant String := "org.freedesktop.DBus.Error.NotSupported" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:72
   SD_BUS_ERROR_LIMITS_EXCEEDED : aliased constant String := "org.freedesktop.DBus.Error.LimitsExceeded" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:73
   SD_BUS_ERROR_ACCESS_DENIED : aliased constant String := "org.freedesktop.DBus.Error.AccessDenied" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:74
   SD_BUS_ERROR_AUTH_FAILED : aliased constant String := "org.freedesktop.DBus.Error.AuthFailed" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:75
   SD_BUS_ERROR_NO_SERVER : aliased constant String := "org.freedesktop.DBus.Error.NoServer" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:76
   SD_BUS_ERROR_TIMEOUT : aliased constant String := "org.freedesktop.DBus.Error.Timeout" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:77
   SD_BUS_ERROR_NO_NETWORK : aliased constant String := "org.freedesktop.DBus.Error.NoNetwork" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:78
   SD_BUS_ERROR_ADDRESS_IN_USE : aliased constant String := "org.freedesktop.DBus.Error.AddressInUse" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:79
   SD_BUS_ERROR_DISCONNECTED : aliased constant String := "org.freedesktop.DBus.Error.Disconnected" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:80
   SD_BUS_ERROR_INVALID_ARGS : aliased constant String := "org.freedesktop.DBus.Error.InvalidArgs" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:81
   SD_BUS_ERROR_FILE_NOT_FOUND : aliased constant String := "org.freedesktop.DBus.Error.FileNotFound" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:82
   SD_BUS_ERROR_FILE_EXISTS : aliased constant String := "org.freedesktop.DBus.Error.FileExists" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:83
   SD_BUS_ERROR_UNKNOWN_METHOD : aliased constant String := "org.freedesktop.DBus.Error.UnknownMethod" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:84
   SD_BUS_ERROR_UNKNOWN_OBJECT : aliased constant String := "org.freedesktop.DBus.Error.UnknownObject" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:85
   SD_BUS_ERROR_UNKNOWN_INTERFACE : aliased constant String := "org.freedesktop.DBus.Error.UnknownInterface" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:86
   SD_BUS_ERROR_UNKNOWN_PROPERTY : aliased constant String := "org.freedesktop.DBus.Error.UnknownProperty" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:87
   SD_BUS_ERROR_PROPERTY_READ_ONLY : aliased constant String := "org.freedesktop.DBus.Error.PropertyReadOnly" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:88
   SD_BUS_ERROR_UNIX_PROCESS_ID_UNKNOWN : aliased constant String := "org.freedesktop.DBus.Error.UnixProcessIdUnknown" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:89
   SD_BUS_ERROR_INVALID_SIGNATURE : aliased constant String := "org.freedesktop.DBus.Error.InvalidSignature" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:90
   SD_BUS_ERROR_INCONSISTENT_MESSAGE : aliased constant String := "org.freedesktop.DBus.Error.InconsistentMessage" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:91
   SD_BUS_ERROR_MATCH_RULE_NOT_FOUND : aliased constant String := "org.freedesktop.DBus.Error.MatchRuleNotFound" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:92
   SD_BUS_ERROR_MATCH_RULE_INVALID : aliased constant String := "org.freedesktop.DBus.Error.MatchRuleInvalid" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:93
   SD_BUS_ERROR_INTERACTIVE_AUTHORIZATION_REQUIRED : aliased constant String := "org.freedesktop.DBus.Error.InteractiveAuthorizationRequired" & ASCII.NUL;  --  /usr/include/systemd/sd-bus-protocol.h:94

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

  -- Types of message  
  -- Primitive types  
  -- not actually used in signatures  
  -- not actually used in signatures  
  -- SPDX-License-Identifier: LGPL-2.1+  
end Systemd.Low_Level.systemd_sd_bus_protocol_h;
