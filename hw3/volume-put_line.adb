with Ada.Long_Float_Text_IO, Ada.Text_IO;
procedure Volume.Put_Line (Volume : in Volume_Type) is
begin
   Ada.Long_Float_Text_IO.put(Long_Float(Volume.Volume), 7, 4, 0);
   Ada.Text_IO.Put(" cubic centimeteres");
   Ada.Text_IO.New_Line;
end Volume.Put_Line;
