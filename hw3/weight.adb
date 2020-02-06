package body Weight is
   
   function Get(Weight: in Weight_Type) return Gram_Type is
   begin
      return Weight.Weight;
   end;

   procedure Set(Weight_In: in Pound_Type; Weight: in out Weight_Type) is
   begin
      Weight.Weight := Gram_Type((Weight_In  * 16.0) * 28.34952_312);
   end;

end Weight;

