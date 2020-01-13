with Ada.Text_IO, Ada.Float_Text_IO;

procedure f2c3 is
  Value_F, Value_C : Float;
  Units : Character;

  procedure Get_Temperature_From_Console ( Value : out Float; Units : out
    Character) is
  begin
    Ada.Text_IO.Put ("Temperature in Fahrenheit: ");
    Ada.Text_IO.Flush;
    Value := Float'Value (Ada.Text_IO.Get_Line);
    Units := 'f';
  end;

  procedure Write_Temperature_To_Console ( Value : in Float; Units : in
    Character) is
  begin
    if Units = 'c' then
      Ada.Text_IO.Put ("The temperature in Celsisus is: ");
    elsif Units = 'f' then
      Ada.Text_IO.Put ("The temperature in Fahrenheit is: ");
    end if;

    Ada.Float_Text_IO.Put (Value, 5, 3, 0);
    Ada.Text_IO.Put_Line("");
  end;

  function Convert_Fahrenheit_To_Celsius ( Value : in Float ) return Float is
  begin
    return (((Value - 32.0) * 5.0) / 9.0);
  end;

begin
  Get_Temperature_From_Console (Value_F, Units);
  Write_Temperature_To_Console (Value_F, Units);
  Value_C := Convert_Fahrenheit_To_Celsius (Value_F);
  Write_Temperature_To_Console (Value_C, 'c');
end f2c3;
