with Ada.Text_IO;

procedure Barnes1 is
  A, B, C: Integer;
begin
  A := Integer'Value (Ada.Text_IO.Get_Line);
  B := Integer'Value (Ada.Text_IO.Get_Line);
  C := A + B;

  if
