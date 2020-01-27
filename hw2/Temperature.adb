package body Temperature is 
   procedure Get ( Temp_Out: out Kelvin_Type ;
      Temperature: in Temperature_Type ) is
   begin
      Temp_Out := Temperature.Temp_In_Kelvin;
   end;

   procedure Get ( Temp_Out: out Celcius_Type ; 
      Temperature: in Temperature_Type ) is
   begin
      Temp_Out := Celcius_Type (Temperature.Temp_In_Kelvin - 237.15);
   end;
  
   procedure Get ( Temp_Out: out Fahrenheit_Type ;
      Temperature: in Temperature_Type ) is
      Temp: Long_Float;
   begin
      Temp := Long_Float(Temperature.Temp_In_Kelvin);
      Temp_Out := Fahrenheit_Type(((Temp - 273.15 ) * 9.0 ) / 5.0 ) + 32.0;
   end;

   procedure Set ( Temp_In: in Kelvin_Type ;
      Temperature: in out Temperature_Type ) is
   begin
      Temperature.Temp_In_Kelvin := Temp_In;
   end;
   
   procedure Set ( Temp_In: in Celcius_Type ; 
      Temperature: in out Temperature_Type ) is
   begin
      Temperature.Temp_In_Kelvin := Kelvin_Type (Temp_In + 237.15);
   end;

   procedure Set ( Temp_In: in Fahrenheit_Type ; 
      Temperature: in out Temperature_Type ) is
   begin
      Temperature.Temp_In_Kelvin := Kelvin_Type (((( Temp_In - 32.0) * 5.0)
      / 9.0) + 273.15);
   end;

end Temperature;
