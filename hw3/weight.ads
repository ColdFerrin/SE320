package Weight is
   type Gram_Type is new Long_Float;
   type Pound_Type is new Long_Float;
   type Ounce_Type is new Long_Float;
   
   type Weight_Type is private;

   function Get(Weight: in Weight_Type) return Gram_Type;

   procedure Set(Weight_In: in Pound_Type; Weight: in out Weight_Type);

   private
   type Weight_Type is record
      Weight: Gram_Type;
   end record;

end Weight;

