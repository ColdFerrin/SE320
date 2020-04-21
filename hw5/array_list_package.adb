with Ada.Text_IO, Ada.Integer_Text_IO;

package body Array_List_Package is
   
   procedure Init(List: in out Array_List_Type; 
                  Size: in Integer) is
   begin
      List.Data := new Data_Array_Type(1 .. Size);
   end Init;

   procedure Init(List: in Array_List_Access_Type; 
                  Size: in Integer) is
   begin
      List.Data := new Data_Array_Type(1 .. Size);
   end Init;
   
   procedure Add(List: in out Array_List_Type;
                 Value: in Data_Type;
                 Success: out Boolean) is
   begin
      if (List.Length < List.Data'Last) then
         List.Length := List.Length + 1;
         List.Data(List.Length) := Value;
         Success := True;
      else
         Success := False;
      end if;
   end Add;

   procedure Add(List: in Array_List_Access_Type;
                 Value: in Data_Type;
                 Success: out Boolean) is
   begin
      if (List.Length < List.Data'Last) then
         List.Length := List.Length + 1;
         List.Data(List.Length) := Value;
         Success := True;
      else
         Success := False;
      end if;
   end Add;
   
   function Find(List: in Array_List_Type;
                 Value: in Data_Type) return Index_Type is
   begin
      for Index in 1 .. List.Length loop
         if List.Data(Index) = Value then
            return Index_Type(Index);
         end if;
      end loop;
      return 0;
   end Find;

   function Find(List: in Array_List_Access_Type;
                 Value: in Data_Type) return Index_Type is
   begin
      for Index in 1 .. List.Length loop
         if List.Data(Index) = Value then
            return Index_Type(Index);
         end if;
      end loop;
      return 0;
   end Find;

   procedure Remove(List: in out Array_List_Type; 
                    Index: in Index_Type; 
                    Success: out Boolean) is
   begin
      if Index > 0 and Integer(Index) <= List.Length then
         List.Length := List.Length - 1;
         for I in Integer(Index) .. List.Length loop
            List.Data(I) := List.Data(I + 1);
         end loop;
         Success := True;
      else
         Success := False;
      end if;
   end Remove;

   procedure Remove(List: in Array_List_Access_Type;
                    Index: in Index_Type;
                    Success: out Boolean) is
   begin
      if Index > 0 and Integer(Index) <= List.Length then
         List.Length := List.Length -1;
         for I in Integer(Index) .. List.Length loop
            list.Data(I) := List.Data(I + 1);
         end loop;
         Success := True;
      else
         Success := False;
      end if;
   end Remove;
   
   procedure Remove (List    : in out Array_List_Type;
                     Value   : in     Data_Type;
                     Success :    out Boolean) is
   begin
      Remove(List, Find(List, Value), Success);
   end Remove;

   procedure Remove (List: in Array_List_Access_Type;
                     Value: in Data_Type;
                     Success: out Boolean) is
   begin
      Remove(List, Find(List, Value), Success);
   end Remove;


   procedure Copy(Source: in Array_List_Type;
                  Destination: in out Array_List_Type) is
      Copy_Length: Integer := 0;
   begin
      
      if Source.Length > Destination.Data'Last then
         Copy_Length := Destination.Data'Last;
      else
         Copy_Length := Source.Length;
      end if;
      for I in 1 .. Copy_Length loop
         Destination.Data(I) := Source.Data(I);
      end loop;
      Destination.Length := Copy_Length;
   end Copy;

   procedure Copy(Source: in Array_List_Access_Type;
                  Destination: in  Array_List_Access_Type) is
      Copy_Length: Integer := 0;
   begin
      if Source.Length > Destination.Data'Last then
         Copy_Length := Destination.Data'Last;
      else
         Copy_Length := Source.Length;
      end if;
      for I in 1 .. Copy_Length loop
         Destination.Data(I) := Source.Data(I);
      end loop;
      Destination.Length := Copy_Length;
   end Copy;

   procedure Put_Line(List: in Array_List_Type) is
   begin
      for I in 1 .. List.Length loop
         Ada.Integer_Text_IO.Put(Integer(List.Data(I)), 4);
         if I < List.Length then
            if I mod 10 = 0 then
               Ada.Text_IO.Put_Line(",");
            else
               Ada.Text_IO.Put(", ");
            end if;
         end if;
      end loop;
      Ada.Text_IO.New_Line;
   end Put_Line;

   procedure Put_Line(List: in Array_List_Access_Type) is
   begin
      for I in 1 .. List.Length loop
         Ada.Integer_Text_IO.Put(Integer(List.Data(I)), 4);
         if I < List.Length then
            if I mod 10 = 0 then
               Ada.Text_IO.Put_Line(",");
            else
               Ada.Text_IO.Put(", ");
            end if;
         end if;
      end loop;
      Ada.Text_IO.New_Line;
   end Put_Line;

   procedure Create(Size: in Integer; Ptr: in out Array_List_Access_Type) is
   begin
      Ptr := new Array_List_Type;
      Init(Ptr, Size);
   end Create;

   procedure Create(Size: in Integer; Ptr: in out Array_List_Type) is
   begin
      Ptr := new Array_List_Type;
      Init(Ptr, Size);
   end Create;

end Array_List_Package;
