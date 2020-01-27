with Ada.Text_IO, Ada.Float_Text_IO, Temperature;

procedure Main is
   Temp: Temperature.Temperature_Type;
   Temp_Kelvin: Temperature.Kelvin_Type;
   Temp_Fahrenheit: Temperature.Fahrenheit_Type;
   Temp_Celcius: Temperature.Fahrenheit_Type;
begin
   Ada.Text_IO.Put("Enter Temperature in Kelvin: ");
   Ada.Text_IO.Flush;
   Ada.Float_Text_IO.Get(Float (Temp_Kelvin));
   Temperature.set(Temp_Kelvin, Temp);
   Temperature.get(Temp_Kelvin, Temp);
   Temperature.get(Temp_Celcius, Temp);
   Temperature.get(Temp_Fahrenheit, Temp);
   Ada.Float_Text_IO.put(Float(Temp_Kelvin));
   Ada.Text_IO.put("K is ");
   Ada.Float_Text_IO.put(Float(Temp_Celcius));
   Ada.Text_IO.put(" deg C and ");
   Ada.Float_Text_IO.put(Float (Temp_Fahrenheit));
   Ada.Text_IO.put(" deg F ");
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put("Enter Temperature in Celcius: ");
   Ada.Text_IO.Flush;
   Ada.Float_Text_IO.Get(Float(Temp_Celcius));
   Temperature.set(Temp_Celcius, Temp);
   Temperature.get(Temp_Kelvin, Temp);
   Temperature.get(Temp_Celcius, Temp);
   Temperature.get(Temp_Fahrenheit, Temp);
   Ada.Float_Text_IO.put(Float(Temp_Celcius));
   Ada.Text_IO.put("deg C is ");
   Ada.Float_Text_IO.put(Float(Temp_Kelvin));
   Ada.Text_IO.put(" K and ");
   Ada.Float_Text_IO.put(Float(Temp_Fahrenheit));
   Ada.Text_IO.put(" deg F ");
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put("Enter Temperature in Fahrenheit: ");
   Ada.Text_IO.Flush;
   Ada.Float_Text_IO.Get(Float(Temp_Fahrenheit));
   Temperature.set(Temp_Fahrenheit, Temp);
   Temperature.get(Temp_Kelvin, Temp);
   Temperature.get(Temp_Celcius, Temp);
   Temperature.get(Temp_Fahrenheit, Temp);
   Ada.Float_Text_IO.put(Float(Temp_Fahrenheit));
   Ada.Text_IO.put("deg F is ");
   Ada.Float_Text_IO.put(Float(Temp_Celcius));
   Ada.Text_IO.put(" deg C and ");
   Ada.Float_Text_IO.put(Float(Temp_Fahrenheit));
   Ada.Text_IO.put(" k ");
   Ada.Text_Io.New_Line;
   
end;
