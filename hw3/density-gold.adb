with Ada.Long_Float_Text_IO, Ada.Text_IO;
function Density.Gold return Density_Type is
   To_Return: Density_Type;
begin
   To_Return.Density := Grams_Per_Cubic_Centimeter_Type(19.32);
   return To_Return;
end Density.Gold;
