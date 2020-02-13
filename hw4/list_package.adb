with Ada.Text_IO, Ada.Integer_Text_IO;

package body List_Package is

   Pool_Head: List_Cell_Access_Type := Null;

   -- function New_List_Cell_Cohen(Cell_Data: in List_Data_Type;
   --                              Cell_Next: in List_Cell_Access_Type)
   --                             return List_Cell_Access_Type is
   --    Cell: List_Cell_Access_Type;
   -- begin
   --    Cell := new List_Cell_Type'(Data => Cell_Data, Next => Cell_Next);
   --    return Cell;
   -- end New_List_Cell_Cohen;
   
   function New_List_Cell_Solid(Cell_Data: in List_Data_Type;
                                Cell_Next: in List_Cell_Access_Type)
                                return List_Cell_Access_Type is
      Cell: List_Cell_Access_Type;
   begin
      Get_Cell(Pool_Head, Cell);
      Cell.Data := Cell_Data;
      Cell.Next := Cell_Next;
      Return Cell;
   end New_List_Cell_Solid;

   procedure Get_Cell(Pool: in out List_Cell_Access_Type;
                      New_Cell: out List_Cell_Access_Type) is
      Add_Ptr: List_Cell_Access_type;
   begin
      if Pool = Null then
         Add_Ptr := new List_Cell_Type;
         Pool := new List_Cell_Type;
         Pool.Next := Add_Ptr;
         Add_Ptr := new List_Cell_Type;
         Add_Ptr.Next := Pool;
         Pool := Add_Ptr;
         New_Cell := new List_Cell_Type;
      else
         Add_Ptr := Pool;
         Pool := Pool.Next;
         Add_Ptr.next := null;
         New_Cell := Add_Ptr;
      end if;
   end Get_Cell;


   procedure Add_To_Head(Data: in List_Data_Type;
                         List: in out Link_List_Type) is
      Cell: List_Cell_Access_Type;
   begin
      if List.Head /= Null Then
         Cell := New_List_Cell_Solid(Data, List.Head);
         List.Head := Cell;
      else 
         Cell := New_List_Cell_Solid(Data, Null);
         List.Head := Cell;
         List.Tail := Cell;
      end if;
   end Add_To_Head;

   procedure Add_To_Tail(Data: in List_Data_Type;
                         List: in out Link_List_Type) is
      Cell: List_Cell_Access_Type;
   begin
      if List.Head /= Null then
         Cell := New_List_Cell_Solid(Data, Null);
         List.Tail.Next := Cell;
         List.Tail := Cell;
      else
         Cell := New_List_Cell_Solid(Data, Null);
         List.Head := Cell;
         List.Tail := Cell;
      end if;
   end;
   
   procedure Put_Line(List: in Link_List_Type) is
      Cell: List_Cell_Access_Type;
   begin
      Cell := List.Head;
      while (Cell /= null) loop
         Ada.Integer_Text_IO.Put(Integer(Cell.Data));
         Ada.Text_IO.Put(" ");
         Cell := Cell.Next;
      end loop;
      Ada.Text_IO.New_Line;
   end Put_Line;

end List_Package;
