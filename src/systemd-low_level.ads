--  This package is declared private to block direct export of the
--  low levelC types.
--  All generated specs will apear unter this root.

with Interfaces.C;
private package Systemd.Low_Level is
   subtype Uid_T is Interfaces.C.int;
   subtype Gid_T is Interfaces.C.int;
   subtype dev_t is Interfaces.C.int;
   subtype clockid_t is Interfaces.C.int;
end Systemd.Low_Level;
