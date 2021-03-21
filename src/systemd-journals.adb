pragma Ada_2012;
with Interfaces.C.Strings;
package body Systemd.Journals is
   use Systemd.Low_Level.Systemd_Sd_Journal_H;
   -----------
   -- Print --
   -----------

   function Print (Priority : Priority_Type; Format : String) return Int is
      C_Format : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Format);
   begin
      return Ret : constant Int := Sd_Journal_Print (Priority_Type'Pos (Priority), C_Format) do
         Interfaces.C.Strings.Free (C_Format);
      end return;
   end Print;

   -----------
   -- Print --
   -----------

   procedure Print (Priority : Priority_Type; Format : String) is
   begin
      Retcode_2_Exception (Print (Priority, Format));
   end Print;

   ------------
   -- Printv --
   ------------

   function Printv
     (Priority : Priority_Type;
      Format   : String;
      Ap       : access System.Address)
      return Int
   is
      C_Format : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Format);
   begin
      return Ret : constant Int := Sd_Journal_Printv (Priority =>  Priority_Type'Pos (Priority),
                                                      Format   =>  C_Format,
                                                      Ap       => Ap) do
         Interfaces.C.Strings.Free (C_Format);
      end return;
   end Printv;

   ------------
   -- Printv --
   ------------

   procedure Printv
     (Priority : Priority_Type; Format : String; Ap : access System.Address)
   is
   begin
      Retcode_2_Exception (Printv (Priority => Priority, Format => Format, Ap => Ap));
   end Printv;

   ----------
   -- Send --
   ----------

   function Send (Format : String) return Int is
      C_Format : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Format);
   begin
      return Ret : constant Int := Sd_Journal_Send (  Format   =>  C_Format) do
         Interfaces.C.Strings.Free (C_Format);
      end return;
   end Send;

   ----------
   -- Send --
   ----------

   procedure Send (Format : String) is
   begin
      Retcode_2_Exception (Send (Format => Format));
   end Send;

   -----------
   -- Sendv --
   -----------

   function Sendv (Iov : access constant System.Address; N : Int) return Int is
   begin
      return Sd_Journal_Sendv (Iov => Iov, N => N);
   end Sendv;

   ------------
   -- Perror --
   ------------

   function Perror (Message : String) return Int is
      C_Message : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Message);
   begin
      return Ret : constant Int := Sd_Journal_Perror (Message   => C_Message) do
         Interfaces.C.Strings.Free (C_Message);
      end return;
   end Perror;

   ------------
   -- Perror --
   ------------

   procedure Perror (Message : String) is
   begin
      Retcode_2_Exception (Perror (Message => Message));
   end Perror;

   -------------------------
   -- Print_With_Location --
   -------------------------
   function Image ( Item : Natural) return String is
      Ret : constant String := Item'Img;
   begin
      return Ret (Ret'First + 1 .. Ret'Last);
   end;

   function Print_With_Location
     (Priority : Priority_Type;
      File     : String := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity;
      Format   : String)
      return Int
   is
      C_File   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FILE=" & File);
      C_Line   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_LINE=" & Image (Line));
      C_Func   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FUNC=" & Func);
      C_Format : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Format);
   begin
      return Ret : constant Int := Sd_Journal_Print_With_Location (Priority => Priority_Type'Pos (Priority),
                                                                   File     => C_File,
                                                                   Line     => C_Line,
                                                                   Func     => C_Func,
                                                                   Format   => C_Format) do
         Interfaces.C.Strings.Free (C_File);
         Interfaces.C.Strings.Free (C_Line);
         Interfaces.C.Strings.Free (C_Func);
         Interfaces.C.Strings.Free (C_Format);
      end return;
   end Print_With_Location;

   -------------------------
   -- Print_With_Location --
   -------------------------

   procedure Print_With_Location
     (Priority : Priority_Type;
      File     : String := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity;
      Format   : String)
   is
   begin
      Retcode_2_Exception (Print_With_Location (Priority => Priority, File => File, Line => Line, Func => Func, Format => Format));
   end Print_With_Location;

   --------------------------
   -- Printv_With_Location --
   --------------------------

   function Printv_With_Location
     (Priority : Priority_Type;
      File     : String := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity;
      Format   : String;
      Ap       : access System.Address) return Int
   is
      C_File   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FILE=" & File);
      C_Line   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_LINE=" & Image (Line));
      C_Func   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FUNC=" & Func);
      C_Format : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Format);
   begin
      return Ret : constant Int := Sd_Journal_Printv_With_Location (Priority => Priority_Type'Pos (Priority),
                                                                    File     => C_File,
                                                                    Line     => C_Line,
                                                                    Func     => C_Func,
                                                                    Format   => C_Format,
                                                                    Ap       => Ap) do
         Interfaces.C.Strings.Free (C_File);
         Interfaces.C.Strings.Free (C_Line);
         Interfaces.C.Strings.Free (C_Func);
         Interfaces.C.Strings.Free (C_Format);
      end return;
   end Printv_With_Location;

   --------------------------
   -- Printv_With_Location --
   --------------------------

   procedure Printv_With_Location
     (Priority : Priority_Type; File : String := Gnat.Source_Info.File;
      Line     : Natural := Gnat.Source_Info.Line;
      Func     : String  := Gnat.Source_Info.Enclosing_Entity; Format : String;
      Ap       : access System.Address)
   is
   begin
      Retcode_2_Exception (Printv_With_Location (Priority => Priority, File => File, Line => Line, Func => Func, Format => Format, Ap => Ap));
   end Printv_With_Location;

   ------------------------
   -- Send_With_Location --
   ------------------------

   function Send_With_Location
     (File   : String  := Gnat.Source_Info.File;
      Line   : Natural := Gnat.Source_Info.Line;
      Func   : String  := Gnat.Source_Info.Enclosing_Entity;
      Format : String)
      return Int
   is
      C_File   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FILE=" & File);
      C_Line   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_LINE=" & Image (Line));
      C_Func   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FUNC=" & Func);
      C_Format : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Format);
   begin
      return Ret : constant Int := Sd_Journal_Send_With_Location (File     => C_File,
                                                                  Line     => C_Line,
                                                                  Func     => C_Func,
                                                                  Format   => C_Format) do
         Interfaces.C.Strings.Free (C_File);
         Interfaces.C.Strings.Free (C_Line);
         Interfaces.C.Strings.Free (C_Func);
         Interfaces.C.Strings.Free (C_Format);
      end return;
   end Send_With_Location;

   ------------------------
   -- Send_With_Location --
   ------------------------

   procedure Send_With_Location
     (File   : String  := Gnat.Source_Info.File;
      Line   : Natural := Gnat.Source_Info.Line;
      Func   : String  := Gnat.Source_Info.Enclosing_Entity;
      Format : String)
   is
   begin
      Retcode_2_Exception (Send_With_Location (File => File, Line => Line, Func => Func, Format => Format));
   end Send_With_Location;

   -------------------------
   -- Sendv_With_Location --
   -------------------------

   function Sendv_With_Location
     (File : String  := Gnat.Source_Info.File;
      Line : Natural := Gnat.Source_Info.Line;
      Func : String  := Gnat.Source_Info.Enclosing_Entity;
      Iov  : access constant System.Address; N : Int) return Int
   is
      C_File   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FILE=" & File);
      C_Line   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_LINE=" & Image (Line));
      C_Func   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FUNC=" & Func);
   begin
      return Ret : constant Int := Sd_Journal_Sendv_With_Location (File      => C_File,
                                                                   Line      => C_Line,
                                                                   Func      => C_Func,
                                                                   Iov       => Iov,
                                                                   N         => N) do
         Interfaces.C.Strings.Free (C_File);
         Interfaces.C.Strings.Free (C_Line);
         Interfaces.C.Strings.Free (C_Func);
      end return;
   end Sendv_With_Location;

   -------------------------
   -- Sendv_With_Location --
   -------------------------

   procedure Sendv_With_Location
     (File : String  := Gnat.Source_Info.File;
      Line : Natural := Gnat.Source_Info.Line;
      Func : String  := Gnat.Source_Info.Enclosing_Entity;
      Iov  : access constant System.Address; N : Int)
   is
   begin
      Retcode_2_Exception (Sendv_With_Location (File => File, Line => Line, Func => Func, Iov => Iov, N => N));
   end Sendv_With_Location;

   --------------------------
   -- Perror_With_Location --
   --------------------------

   function Perror_With_Location
     (File    : String  := Gnat.Source_Info.File;
      Line    : Natural := Gnat.Source_Info.Line;
      Func    : String  := Gnat.Source_Info.Enclosing_Entity;
      Message : String)
      return Int
   is
      C_File   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FILE=" & File);
      C_Line   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_LINE=" & Image (Line));
      C_Func   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String ("CODE_FUNC=" & Func);
      C_Message   : Interfaces.C.Strings.Chars_Ptr := Interfaces.C.Strings.New_String (Message);
   begin
      return Ret : constant Int := Sd_Journal_Perror_With_Location (File      => C_File,
                                                                    Line      => C_Line,
                                                                    Func      => C_Func,
                                                                    Message   => C_Message) do
         Interfaces.C.Strings.Free (C_File);
         Interfaces.C.Strings.Free (C_Line);
         Interfaces.C.Strings.Free (C_Func);
         Interfaces.C.Strings.Free (C_Message);
      end return;

   end Perror_With_Location;

   --------------------------
   -- Perror_With_Location --
   --------------------------

   procedure Perror_With_Location
     (File    : String  := Gnat.Source_Info.File;
      Line    : Natural := Gnat.Source_Info.Line;
      Func    : String  := Gnat.Source_Info.Enclosing_Entity;
      Message : String)
   is
   begin
      Retcode_2_Exception (Perror_With_Location (File, Line, Func, Message));
   end Perror_With_Location;

   --  ########################################################################
   --  ########################################################################

   ---------------
   -- Stream_Fd --
   ---------------

   function Stream_Fd
     (Identifier : String; Priority : Int; Level_Prefix : Int) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Stream_Fd unimplemented");
      return raise Program_Error with "Unimplemented function Stream_Fd";
   end Stream_Fd;

   ----------
   -- Open --
   ----------

   procedure Open (Self : in out Sd_Journal; Flags : Int) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Open unimplemented");
      raise Program_Error with "Unimplemented procedure Open";
   end Open;

   --------------------
   -- Open_Directory --
   --------------------

   procedure Open_Directory
     (Self : in out Sd_Journal; Path : String; Flags : Int)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Open_Directory unimplemented");
      raise Program_Error with "Unimplemented procedure Open_Directory";
   end Open_Directory;

   -----------------------
   -- Open_Directory_Fd --
   -----------------------

   procedure Open_Directory_Fd
     (Self : in out Sd_Journal; Fd : Int; Flags : Int)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Open_Directory_Fd unimplemented");
      raise Program_Error with "Unimplemented procedure Open_Directory_Fd";
   end Open_Directory_Fd;

   ----------------
   -- Open_Files --
   ----------------

   procedure Open_Files
     (Self : in out Sd_Journal; Paths : System.Address; Flags : Int)
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Open_Files unimplemented");
      raise Program_Error with "Unimplemented procedure Open_Files";
   end Open_Files;

   -------------------
   -- Open_Files_Fd --
   -------------------

   procedure Open_Files_Fd
     (Self  : in out Sd_Journal; Fds : access Int; N_Fds : Unsigned;
      Flags :        Int)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Open_Files_Fd unimplemented");
      raise Program_Error with "Unimplemented procedure Open_Files_Fd";
   end Open_Files_Fd;

   -----------
   -- Close --
   -----------

   procedure Close (Self : in out Sd_Journal) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Close unimplemented");
      raise Program_Error with "Unimplemented procedure Close";
   end Close;

   --------------
   -- Previous --
   --------------

   function Previous (Self : in out Sd_Journal) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Previous unimplemented");
      return raise Program_Error with "Unimplemented function Previous";
   end Previous;

   ----------
   -- Next --
   ----------

   function Next (Self : in out Sd_Journal) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Next unimplemented");
      return raise Program_Error with "Unimplemented function Next";
   end Next;

   -------------------
   -- Previous_Skip --
   -------------------

   function Previous_Skip
     (Self : in out Sd_Journal; Skip : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Previous_Skip unimplemented");
      return raise Program_Error with "Unimplemented function Previous_Skip";
   end Previous_Skip;

   ---------------
   -- Next_Skip --
   ---------------

   function Next_Skip
     (Self : in out Sd_Journal; Skip : Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Next_Skip unimplemented");
      return raise Program_Error with "Unimplemented function Next_Skip";
   end Next_Skip;

   -----------------------
   -- Get_Realtime_Usec --
   -----------------------

   function Get_Realtime_Usec
     (Self : in out Sd_Journal; Ret : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Realtime_Usec unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Realtime_Usec";
   end Get_Realtime_Usec;

   ------------------------
   -- Get_Monotonic_Usec --
   ------------------------

   function Get_Monotonic_Usec
     (Self        : in out Sd_Journal; Ret : access Unsigned_Long;
      Ret_Boot_Id :    out Systemd.Id128.Id128_T) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Monotonic_Usec unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Monotonic_Usec";
   end Get_Monotonic_Usec;

   ------------------------
   -- Set_Data_Threshold --
   ------------------------

   procedure Set_Data_Threshold (Self : in out Sd_Journal; Sz : Unsigned_Long)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Set_Data_Threshold unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Data_Threshold";
   end Set_Data_Threshold;

   ------------------------
   -- Get_Data_Threshold --
   ------------------------

   function Get_Data_Threshold (Self : in out Sd_Journal) return Unsigned_Long
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Data_Threshold unimplemented");
      return
      raise Program_Error with "Unimplemented function Get_Data_Threshold";
   end Get_Data_Threshold;

   --------------
   -- Get_Data --
   --------------

   function Get_Data
     (J : in out Sd_Journal; Field : String; Data : System.Address;
      L :        access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Data unimplemented");
      return raise Program_Error with "Unimplemented function Get_Data";
   end Get_Data;

   --------------------
   -- Enumerate_Data --
   --------------------

   function Enumerate_Data
     (J : in out Sd_Journal; Data : System.Address; L : access Unsigned_Long)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Enumerate_Data unimplemented");
      return raise Program_Error with "Unimplemented function Enumerate_Data";
   end Enumerate_Data;

   ------------------
   -- Restart_Data --
   ------------------

   procedure Restart_Data (J : access Sd_Journal) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Restart_Data unimplemented");
      raise Program_Error with "Unimplemented procedure Restart_Data";
   end Restart_Data;

   ---------------
   -- Add_Match --
   ---------------

   function Add_Match
     (J : in out Sd_Journal; Data : System.Address; Size : Unsigned_Long)
      return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Add_Match unimplemented");
      return raise Program_Error with "Unimplemented function Add_Match";
   end Add_Match;

   ---------------------
   -- Add_Disjunction --
   ---------------------

   function Add_Disjunction (J : in out Sd_Journal) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Add_Disjunction unimplemented");
      return raise Program_Error with "Unimplemented function Add_Disjunction";
   end Add_Disjunction;

   ---------------------
   -- Add_Conjunction --
   ---------------------

   function Add_Conjunction (J : in out Sd_Journal) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Add_Conjunction unimplemented");
      return raise Program_Error with "Unimplemented function Add_Conjunction";
   end Add_Conjunction;

   -------------------
   -- Flush_Matches --
   -------------------

   procedure Flush_Matches (J : in out Sd_Journal) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Flush_Matches unimplemented");
      raise Program_Error with "Unimplemented procedure Flush_Matches";
   end Flush_Matches;

   ---------------
   -- Seek_Head --
   ---------------

   procedure Seek_Head (J : in out Sd_Journal) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Seek_Head unimplemented");
      raise Program_Error with "Unimplemented procedure Seek_Head";
   end Seek_Head;

   ---------------
   -- Seek_Tail --
   ---------------

   procedure Seek_Tail (J : in out Sd_Journal) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Seek_Tail unimplemented");
      raise Program_Error with "Unimplemented procedure Seek_Tail";
   end Seek_Tail;

   -------------------------
   -- Seek_Monotonic_Usec --
   -------------------------

   procedure Seek_Monotonic_Usec
     (J    : in out Sd_Journal; Boot_Id : Systemd.Id128.Id128_T;
      Usec :        Unsigned_Long)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Seek_Monotonic_Usec unimplemented");
      raise Program_Error with "Unimplemented procedure Seek_Monotonic_Usec";
   end Seek_Monotonic_Usec;

   ------------------------
   -- Seek_Realtime_Usec --
   ------------------------

   procedure Seek_Realtime_Usec (J : in out Sd_Journal; Usec : Unsigned_Long)
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Seek_Realtime_Usec unimplemented");
      raise Program_Error with "Unimplemented procedure Seek_Realtime_Usec";
   end Seek_Realtime_Usec;

   -----------------
   -- Seek_Cursor --
   -----------------

   procedure Seek_Cursor (J : in out Sd_Journal; Cursor : String) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Seek_Cursor unimplemented");
      raise Program_Error with "Unimplemented procedure Seek_Cursor";
   end Seek_Cursor;

   ----------------
   -- Get_Cursor --
   ----------------

   function Get_Cursor (J : in out Sd_Journal) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Cursor unimplemented");
      return raise Program_Error with "Unimplemented function Get_Cursor";
   end Get_Cursor;

   -----------------
   -- Test_Cursor --
   -----------------

   function Test_Cursor (J : in out Sd_Journal; Cursor : String) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Test_Cursor unimplemented");
      return raise Program_Error with "Unimplemented function Test_Cursor";
   end Test_Cursor;

   ------------------------------
   -- Get_Cutoff_Realtime_Usec --
   ------------------------------

   function Get_Cutoff_Realtime_Usec
     (J  : in out Sd_Journal; From : access Unsigned_Long;
      To :        access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Cutoff_Realtime_Usec unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Get_Cutoff_Realtime_Usec";
   end Get_Cutoff_Realtime_Usec;

   -------------------------------
   -- Get_Cutoff_Monotonic_Usec --
   -------------------------------

   function Get_Cutoff_Monotonic_Usec
     (J    : in out Sd_Journal; Boot_Id : Systemd.Id128.Id128_T;
      From :        access Unsigned_Long; To : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Cutoff_Monotonic_Usec unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Get_Cutoff_Monotonic_Usec";
   end Get_Cutoff_Monotonic_Usec;

   ---------------
   -- Get_Usage --
   ---------------

   function Get_Usage
     (J : in out Sd_Journal; Bytes : access Unsigned_Long) return Int
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Usage unimplemented");
      return raise Program_Error with "Unimplemented function Get_Usage";
   end Get_Usage;

   ------------------
   -- Query_Unique --
   ------------------

   function Query_Unique (J : in out Sd_Journal; Field : String) return Int is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Query_Unique unimplemented");
      return raise Program_Error with "Unimplemented function Query_Unique";
   end Query_Unique;

   ----------------------
   -- Enumerate_Unique --
   ----------------------

   function Enumerate_Unique
     (J : in out Sd_Journal; Data : System.Address; L : access Unsigned_Long)
      return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Enumerate_Unique unimplemented");
      return
      raise Program_Error with "Unimplemented function Enumerate_Unique";
   end Enumerate_Unique;

   --------------------
   -- Restart_Unique --
   --------------------

   procedure Restart_Unique (J : in out Sd_Journal) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Restart_Unique unimplemented");
      raise Program_Error with "Unimplemented procedure Restart_Unique";
   end Restart_Unique;

   ----------------------
   -- Enumerate_Fields --
   ----------------------

   function Enumerate_Fields
     (J : in out Sd_Journal; Field : System.Address) return Int
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Enumerate_Fields unimplemented");
      return
      raise Program_Error with "Unimplemented function Enumerate_Fields";
   end Enumerate_Fields;

   --------------------
   -- Restart_Fields --
   --------------------

   procedure Restart_Fields (J : in out Sd_Journal) is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Restart_Fields unimplemented");
      raise Program_Error with "Unimplemented procedure Restart_Fields";
   end Restart_Fields;

   ------------
   -- Get_Fd --
   ------------

   function Get_Fd (J : in out Sd_Journal) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Fd unimplemented");
      return raise Program_Error with "Unimplemented function Get_Fd";
   end Get_Fd;

   ----------------
   -- Get_Events --
   ----------------

   function Get_Events (J : in out Sd_Journal) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Events unimplemented");
      return raise Program_Error with "Unimplemented function Get_Events";
   end Get_Events;

   -----------------
   -- Get_Timeout --
   -----------------

   function Get_Timeout (J : in out Sd_Journal) return Duration is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Timeout unimplemented");
      return raise Program_Error with "Unimplemented function Get_Timeout";
   end Get_Timeout;

   -------------
   -- Process --
   -------------

   function Process (J : in out Sd_Journal) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Process unimplemented");
      return raise Program_Error with "Unimplemented function Process";
   end Process;

   ----------
   -- Wait --
   ----------

   procedure Wait (J : in out Sd_Journal; Timeout : Duration) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Wait unimplemented");
      raise Program_Error with "Unimplemented procedure Wait";
   end Wait;

   -----------------
   -- Reliable_Fd --
   -----------------

   function Reliable_Fd (J : in out Sd_Journal) return Int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Reliable_Fd unimplemented");
      return raise Program_Error with "Unimplemented function Reliable_Fd";
   end Reliable_Fd;

   -----------------
   -- Get_Catalog --
   -----------------

   function Get_Catalog (J : in out Sd_Journal) return String is
   begin
      pragma Compile_Time_Warning (Standard.True, "Get_Catalog unimplemented");
      return raise Program_Error with "Unimplemented function Get_Catalog";
   end Get_Catalog;

   --------------------------------
   -- Get_Catalog_For_Message_Id --
   --------------------------------

   function Get_Catalog_For_Message_Id
     (Id : Systemd.Id128.Id128_T) return String
   is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Get_Catalog_For_Message_Id unimplemented");
      return
      raise Program_Error
        with "Unimplemented function Get_Catalog_For_Message_Id";
   end Get_Catalog_For_Message_Id;

   -----------------------
   -- Has_Runtime_Files --
   -----------------------

   function Has_Runtime_Files (J : Sd_Journal) return Boolean is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Has_Runtime_Files unimplemented");
      return
      raise Program_Error with "Unimplemented function Has_Runtime_Files";
   end Has_Runtime_Files;

   --------------------------
   -- Has_Persistent_Files --
   --------------------------

   function Has_Persistent_Files (J : Sd_Journal) return Boolean is
   begin
      pragma Compile_Time_Warning
        (Standard.True, "Has_Persistent_Files unimplemented");
      return
      raise Program_Error with "Unimplemented function Has_Persistent_Files";
   end Has_Persistent_Files;

   ------------
   -- Closep --
   ------------

   procedure Closep (P : in out Sd_Journal) is
   begin
      pragma Compile_Time_Warning (Standard.True, "Closep unimplemented");
      raise Program_Error with "Unimplemented procedure Closep";
   end Closep;

end Systemd.Journals;
