with Ada.Long_Float_Text_IO, Ada.Text_IO;
procedure Weight.Put_Line (Weight : in Weight_Type) is
begin
   Ada.Long_Float_Text_IO.put(Long_Float(Weight.Weight), 7, 4, 0);
   Ada.Text_IO.Put(" grams");
   Ada.Text_IO.New_Line;
end Weight.Put_Line;
