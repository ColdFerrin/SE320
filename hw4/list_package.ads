package List_Package is
   
   type List_Data_Type is new Integer;
   type Link_List_Type is private;
     
   procedure Add_To_Head(Data: in List_Data_Type;
                         List: in out Link_List_Type);
   -- procedure Add_To_Tail(Data: in List_Data_Type;
   --                       List: in out Link_List_Type);
   procedure Put_Line(List: in Link_List_Type);
   
private
   type List_Cell_Type;
   type List_Cell_Access_Type is access List_Cell_Type;
   
   type List_Cell_Type is
      record
         Data: List_Data_Type;
         Next: List_Cell_Access_Type;
      end record;
   
   type Link_List_Type is
      record
         Head: List_Cell_Access_Type := null;
         -- Tail: List_Cell_Access_Type := null;
      end record;
   
   function New_List_Cell_Cohen(Cell_Data: in List_Data_Type;
                                Cell_Next: in List_Cell_Access_Type)
                               return List_Cell_Access_Type;
   -- function New_List_Cell_Solid(Cell_Data: in List_Data_Type;
   --                              Cell_Next: in List_Cell_Access_Type)
   --                             return List_Cell_Access_Type;
   
end List_Package;
