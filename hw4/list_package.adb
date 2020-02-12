with Ada.Text_IO, Ada.Integer_Text_IO;

package body List_Package is

   function New_List_Cell_Cohen(Cell_Data: in List_Data_Type;
                                Cell_Next: in List_Cell_Access_Type)
                               return List_Cell_Access_Type is
      Cell: List_Cell_Access_Type;
   begin
      Cell := new List_Cell_Type'(Data => Cell_Data, Next => Cell_Next);
      return Cell;
   end New_List_Cell_Cohen;

   procedure Add_To_Head(Data: in List_Data_Type;
                         List: in out Link_List_Type) is
      Cell: List_Cell_Access_Type;
   begin
      Cell := New_List_Cell_Cohen(Data, List.Head);
      List.Head := Cell;
   end Add_To_Head;
   
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
