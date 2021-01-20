package Systemd.Bus.Protocol is

   ROOT : constant String := "org.freedesktop.DBus.Error.";
   package ERROR is
      FAILED                             : aliased constant String := ROOT & "Failed" & ASCII.NUL;
      NO_MEMORY                          : aliased constant String := ROOT & "NoMemory" & ASCII.NUL;
      SERVICE_UNKNOWN                    : aliased constant String := ROOT & "ServiceUnknown" & ASCII.NUL;
      NAME_HAS_NO_OWNER                  : aliased constant String := ROOT & "NameHasNoOwner" & ASCII.NUL;
      NO_REPLY                           : aliased constant String := ROOT & "NoReply" & ASCII.NUL;
      IO_ERROR                           : aliased constant String := ROOT & "IOError" & ASCII.NUL;
      BAD_ADDRESS                        : aliased constant String := ROOT & "BadAddress" & ASCII.NUL;
      NOT_SUPPORTED                      : aliased constant String := ROOT & "NotSupported" & ASCII.NUL;
      LIMITS_EXCEEDED                    : aliased constant String := ROOT & "LimitsExceeded" & ASCII.NUL;
      ACCESS_DENIED                      : aliased constant String := ROOT & "AccessDenied" & ASCII.NUL;
      AUTH_FAILED                        : aliased constant String := ROOT & "AuthFailed" & ASCII.NUL;
      NO_SERVER                          : aliased constant String := ROOT & "NoServer" & ASCII.NUL;
      TIMEOUT                            : aliased constant String := ROOT & "Timeout" & ASCII.NUL;
      NO_NETWORK                         : aliased constant String := ROOT & "NoNetwork" & ASCII.NUL;
      ADDRESS_IN_USE                     : aliased constant String := ROOT & "AddressInUse" & ASCII.NUL;
      DISCONNECTED                       : aliased constant String := ROOT & "Disconnected" & ASCII.NUL;
      INVALID_ARGS                       : aliased constant String := ROOT & "InvalidArgs" & ASCII.NUL;
      FILE_NOT_FOUND                     : aliased constant String := ROOT & "FileNotFound" & ASCII.NUL;
      FILE_EXISTS                        : aliased constant String := ROOT & "FileExists" & ASCII.NUL;
      UNKNOWN_METHOD                     : aliased constant String := ROOT & "UnknownMethod" & ASCII.NUL;
      UNKNOWN_OBJECT                     : aliased constant String := ROOT & "UnknownObject" & ASCII.NUL;
      UNKNOWN_INTERFACE                  : aliased constant String := ROOT & "UnknownInterface" & ASCII.NUL;
      UNKNOWN_PROPERTY                   : aliased constant String := ROOT & "UnknownProperty" & ASCII.NUL;
      PROPERTY_READ_ONLY                 : aliased constant String := ROOT & "PropertyReadOnly" & ASCII.NUL;
      UNIX_PROCESS_ID_UNKNOWN            : aliased constant String := ROOT & "UnixProcessIdUnknown" & ASCII.NUL;
      INVALID_SIGNATURE                  : aliased constant String := ROOT & "InvalidSignature" & ASCII.NUL;
      INCONSISTENT_MESSAGE               : aliased constant String := ROOT & "InconsistentMessage" & ASCII.NUL;
      MATCH_RULE_NOT_FOUND               : aliased constant String := ROOT & "MatchRuleNotFound" & ASCII.NUL;
      MATCH_RULE_INVALID                 : aliased constant String := ROOT & "MatchRuleInvalid" & ASCII.NUL;
      INTERACTIVE_AUTHORIZATION_REQUIRED : aliased constant String := ROOT & "InteractiveAuthorizationRequired" & ASCII.NUL;
   end Error;
end Systemd.Bus.Protocol;
