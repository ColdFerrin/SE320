with Volume, Weight;

package Density is
 
   type Grams_Per_Cubic_Centimeter_Type is new Long_Float;
   type Pounds_Per_Gallon_Type is new Long_Float;
   
   type Density_Type is private;

   function Get(Density: in Density_Type) return 
      Grams_Per_Cubic_Centimeter_Type;

   procedure Set(Weight_In: in Weight.Weight_Type; Volume_In: in
      Volume.Volume_Type; Density: in out Density_Type);

   private
   type Density_Type is record
      Density: Grams_Per_Cubic_Centimeter_Type;
   end record;

end Density;

