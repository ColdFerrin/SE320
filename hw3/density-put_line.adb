with Ada.Long_Float_Text_IO, Ada.Text_IO;
procedure Density.Put_Line (Density : in Density_Type) is
begin
   Ada.Long_Float_Text_IO.put(Long_Float(Density.Density), 7, 4, 0);
   Ada.Text_IO.Put(" grams per cubic centimeter");
   Ada.Text_IO.New_Line;
end Density.Put_Line;
