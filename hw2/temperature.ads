package Temperature is 
   type Kelvin_Type is new Long_Float range 0.0 .. Long_Float'Last;
   type Celcius_Type is new Long_Float;
   type Fahrenheit_Type is new Long_Float;

   type Temperature_Type is private;

   procedure Get ( Temp_Out: out Kelvin_Type ; 
      Temperature: in Temperature_Type );
   procedure Get ( Temp_Out: out Celcius_Type ;
      Temperature: in Temperature_Type );
   procedure Get ( Temp_Out: out Fahrenheit_Type ;
      Temperature: in Temperature_Type );
   procedure Set ( Temp_In: in Kelvin_Type ;
      Temperature: in out Temperature_Type );
   procedure Set ( Temp_In: in Celcius_Type ;
      Temperature: in out Temperature_Type );
   procedure Set ( Temp_In: in Fahrenheit_Type ;
      Temperature: in out Temperature_Type );

private
   type Temperature_Type is record
      Temp_In_Kelvin: Kelvin_Type;
   end record;

end Temperature;
