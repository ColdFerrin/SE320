with Ada.Text_IO, Ada.Float_Text_IO, Temperature;

procedure Main is
   Temp_1,
   Temp_2,
   Temp_3 : Temperature.Temperature_Type;
   Temp_Kelvin_1,
   Temp_Kelvin_2,
   Temp_Kelvin_3: Temperature.Kelvin_Type;
   Temp_Fahrenheit_1,
   Temp_Fahrenheit_2,
   Temp_Fahrenheit_3: Temperature.Fahrenheit_Type;
   Temp_Celcius_1,
   Temp_Celcius_2,
   Temp_Celcius_3: Temperature.Celcius_Type;
begin
   Ada.Text_IO.Put("Enter Temperature in Kelvin: ");
   Ada.Text_IO.Flush;
   Ada.Float_Text_IO.Get(Float (Temp_Kelvin_1));
   Temperature.set(Temp_Kelvin_1, Temp_1);
   Temperature.get(Temp_Kelvin_1, Temp_1);
   Temperature.get(Temp_Celcius_1, Temp_1);
   Temperature.get(Temp_Fahrenheit_1, Temp_1);
   Ada.Float_Text_IO.put(Float(Temp_Kelvin_1),5,6,0);
   Ada.Text_IO.put("K is ");
   Ada.Float_Text_IO.put(Float(Temp_Celcius_1),5,6,0);
   Ada.Text_IO.put(" deg C and ");
   Ada.Float_Text_IO.put(Float (Temp_Fahrenheit_1),5,6,0);
   Ada.Text_IO.put(" deg F ");
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put("Enter Temperature in Celcius: ");
   Ada.Text_IO.Flush;
   Ada.Float_Text_IO.Get(Float(Temp_Celcius_2));
   Temperature.set(Temp_Celcius_2, Temp_2);
   Temperature.get(Temp_Kelvin_2, Temp_2);
   Temperature.get(Temp_Celcius_2, Temp_2);
   Temperature.get(Temp_Fahrenheit_2, Temp_2);
   Ada.Float_Text_IO.put(Float(Temp_Celcius_2),5,6,0);
   Ada.Text_IO.put("deg C is ");
   Ada.Float_Text_IO.put(Float(Temp_Kelvin_2),5,6,0);
   Ada.Text_IO.put(" K and ");
   Ada.Float_Text_IO.put(Float(Temp_Fahrenheit_2),5,6,0);
   Ada.Text_IO.put(" deg F ");
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put("Enter Temperature in Fahrenheit: ");
   Ada.Text_IO.Flush;
   Ada.Float_Text_IO.Get(Float(Temp_Fahrenheit_3));
   Temperature.set(Temp_Fahrenheit_3, Temp_3);
   Temperature.get(Temp_Kelvin_3, Temp_3);
   Temperature.get(Temp_Celcius_3, Temp_3);
   Temperature.get(Temp_Fahrenheit_3, Temp_3);
   Ada.Float_Text_IO.put(Float(Temp_Fahrenheit_3),5,6,0);
   Ada.Text_IO.put("deg F is ");
   Ada.Float_Text_IO.put(Float(Temp_Celcius_3),5,6,0);
   Ada.Text_IO.put(" deg C and ");
   Ada.Float_Text_IO.put(Float(Temp_Kelvin_3),5,6,0);
   Ada.Text_IO.put(" k ");
   Ada.Text_Io.New_Line;
   
end;
