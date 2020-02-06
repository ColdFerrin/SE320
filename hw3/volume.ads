package Volume is
   type Cubic_Centimeter_Type is new Long_Float;
   type Liter_Type is new Long_Float;
   type Gallon_Type is new Long_Float;
   
   type Volume_Type is private;

   function Get(Volume: in Volume_Type) return Cubic_Centimeter_Type;

   procedure Set(Volume_In: in Gallon_Type; Volume: in out Volume_Type);

   private
   type Volume_Type is record
      Volume: Cubic_Centimeter_Type;
   end record;

end Volume;

