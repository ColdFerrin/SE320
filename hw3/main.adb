with Ada.Text_IO, Ada.Long_Float_Text_IO;
with Volume.Put_Line, Weight.Put_Line, Density.Put_Line;
with Density.Gold;
with Density.Purity;

procedure Main is
   Item_Volume: Volume.Volume_Type;
   Item_Weight: Weight.Weight_Type;
   Item_Density: Density.Density_Type;
   Gallon_Input: Volume.Gallon_Type;
   Pound_Input: Weight.Pound_Type;
   Gold_Density: Density.Density_Type;
   Percentage: Long_Float;
begin
   Ada.Text_IO.Put("Enter weight in pounds: ");
   Ada.Long_Float_Text_IO.Get(Long_Float(Pound_Input));
   Ada.Text_IO.Put("Enter volume in gallons: ");
   Ada.Long_Float_Text_IO.Get(Long_Float(Gallon_Input));
   Weight.Set(Pound_Input, Item_Weight);
   Volume.Set(Gallon_Input, Item_Volume);
   Density.Set(Item_Weight, Item_Volume, Item_Density);
   Gold_Density := Density.Gold;
   Weight.Put_Line(Item_Weight);
   Volume.Put_Line(Item_Volume);
   Density.Put_Line(Item_Density);
   Density.Put_Line(Gold_Density);
   Density.Purity(Item_Density, Gold_Density, Percentage);
   Ada.Long_Float_Text_IO.Put(Percentage, 7, 4, 0);
   Ada.Text_IO.Put_Line("%");
end Main;
