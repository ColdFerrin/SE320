th Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Main_Print_Totals is
     Number_Of_Positives,
        Number_Of_Negatives,
           Number_Of_Zeroes     : Integer := 0;
           Sum_Of_Positives,
              Sum_Of_Negatives     : Float := 0.0;
              Number_Of_Items      : Integer;
              Item                 : Float;
begin
  --  Insert code here.
  Ada.Text_IO.Put_Line ("How many items?");
  Ada.Text_IO.Flush;
  Ada.Integer_Text_IO.Get(Number_Of_Items);
  for I in 1 .. Number_Of_Items loop
    Ada.Text_IO.Put_Line ("Enter item: ");
    Ada.Text_IO.Flush;
    Ada.Float_Text_IO.Get (Item);
    if Item > 0.0 then
      Number_Of_Positives := Number_Of_Positives + 1;
      Sum_Of_POsitives := Sum_Of_Positives + Item;
    elsif Item < 0.0
                                        then
                                                   Number_Of_Negatives :=
                                                     Number_Of_Negatives + 1;
                                                              Sum_Of_Negatives
                                                              :=
                                                                Sum_Of_Negatives
                                                                + Item;
                                                                    else  --
                                                                      Item
                                                                               Number_Of_Zeroes
                                                                               :=
                                                                                 Number_Of_Zeroes
                                                                                 + 1;
                                                                                     end
                                                                                     if;
                                                                                        end
                                                                                        loop;
                                                                                           Ada.Text_IO.Put
                                                                                           ("Number
                                                                                           of
                                                                                           positive
                                                                                           items:
                                                                                           ");
                                                                                              Ada.Integer_Text_IO.Put
                                                                                              (Number_Of_Positives);
                                                                                                 Ada.Text_IO.New_Line;
                                                                                                 Ada.Text_IO.Put
                                                                                                 ("Number
                                                                                                 of
                                                                                                 negative
                                                                                                 items:
                                                                                                 ");
                                                                                                    Ada.Integer_Text_IO.Put
                                                                                                    (Number_Of_Negatives);
                                                                                                       Ada.Text_IO.New_Line;
                                                                                                       Ada.Text_IO.Put
                                                                                                       ("Number
                                                                                                       of
                                                                                                       zeroes:
                                                                                                       ");
                                                                                                          Ada.Integer_Text_IO.Put
                                                                                                          (Number_Of_Zeroes);
                                                                                                             Ada.Text_IO.New_Line;
                                                                                                             Ada.Text_IO.Put
                                                                                                             ("Sum
                                                                                                             of
                                                                                                             positive
                                                                                                             items:
                                                                                                             ");
                                                                                                                Ada.Float_Text_IO.Put
                                                                                                                (Sum_Of_Positives);
                                                                                                                   Ada.Text_IO.New_Line;
                                                                                                                   Ada.Text_IO.Put
                                                                                                                   ("Sum
                                                                                                                   of
                                                                                                                   negative
                                                                                                                   items:
                                                                                                                   ");
                                                                                                                      Ada.Float_Text_IO.Put
                                                                                                                      (Sum_Of_Negatives);
                                                                                                                         Ada.Text_IO.New_Line;
                                                                                        end
                                                                                        Main_Print_Totals;
