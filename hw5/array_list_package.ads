package Array_List_Package is
   type Data_Type is new Integer;
   type Index_Type is new Integer;
   type Array_List_Type is private;
   --   procedure Init(Buf: in out Array_List_Type);
   procedure Init(List: in out Array_List_Type; Size: in Integer);
   procedure Add(List: in out Array_List_Type; 
                 Value: in Data_Type;
                 Success: out Boolean);
   function Find(List: in Array_List_Type; 
                 Value: in Data_Type) return Index_Type;
   procedure Remove(List: in out Array_List_Type;
                    Index: in Index_Type;
                    Success: out Boolean);
   procedure Remove(List: in out Array_List_Type; 
                    Value: in Data_Type; 
                    Success: out Boolean);
   procedure Copy(Source: in Array_List_Type;
                  Destination: in out Array_List_Type);
   procedure Put_Line(List: in Array_List_Type);
private
   type Data_Array_Type is array (Positive range <>) of Data_Type;
   type Data_Array_Access_Type is access Data_Array_Type;
   type Array_List_Type is record
      Length: Integer := 0;
      Data: Data_Array_Access_Type := NULL;
   end record;
end Array_List_Package;
