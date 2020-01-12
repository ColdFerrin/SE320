with Ada.Text_IO, Ada.Float_Text_IO;

procedure f2c1 is
  f,
  c: Float;
begin
  Ada.Text_IO.Put_Line ("How many items?");
  Ada.Text_IO.Flush;
  f := Float'Value (Ada.Text_IO.Get_Line);
  c := (((f - 32.0) * 5.0) / 9.0);
  Ada.Text_IO.Put_Line ("The temperature "  & Float'Image (c) & 
  " in Fahrenheit, is" & Float'Image (f) & " in Celsius.");
end f2c1;
