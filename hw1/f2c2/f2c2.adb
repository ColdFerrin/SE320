with Ada.Text_IO, Ada.Float_Text_IO;

procedure f2c2 is
  f,
  c: Float;

begin
  Ada.Text_IO.Put ("Temperature in Fahrenheit: ");
  Ada.Text_IO.Flush;
  f := Float'Value (Ada.Text_IO.Get_Line);
  c := (((f - 32.0) * 5.0) / 9.0);
  Ada.Text_IO.Put ("The temperature in Fahrenheit is: ");
  Ada.Float_Text_IO.Put (f, 5, 2, 0);
  Ada.Text_IO.Put_Line("");
  Ada.Text_IO.Put ("The temperature ic Celsisus is: ");
  Ada.Float_Text_IO.Put (c, 5, 3, 0);
end f2c2;
