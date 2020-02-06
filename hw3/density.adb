with Volume, Weight;

package body Density is

   Gold: Density_Type := Density_Type'(Density => 19.2);

   function Get(Density: in Density_Type) return 
      Grams_Per_Cubic_Centimeter_Type is
   begin
      return Density.Density;
   end;

   procedure Set(Weight_In: in Weight.Weight_Type; Volume_In: in
      Volume.Volume_Type; Density: in out Density_Type) is
      Temp_Weight: Weight.Gram_Type;
      Temp_Volume: Volume.Cubic_Centimeter_Type;
   begin
      Temp_Volume := Volume.Get(Volume_In);
      Temp_Weight := Weight.Get(Weight_In);
      Density.Density := Grams_Per_Cubic_Centimeter_Type(
         Long_Float(Temp_Weight) / Long_Float(Temp_Volume));
   end;
end Density;


