package body Volume is
   function Get(Volume: in Volume_Type) return Cubic_Centimeter_Type is
   begin
      return Volume.Volume;
   end;

   procedure Set(Volume_In: in Gallon_Type; Volume: in out Volume_Type) is
   begin
      Volume.Volume := Cubic_Centimeter_Type((Volume_In * 
      3.78541_1784) * 1000.0);
   end;

end Volume;

