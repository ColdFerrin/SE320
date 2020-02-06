with Ada.Long_Float_Text_IO, Ada.Text_IO;
procedure Density.Purity (Item_Density: in Density_Type; Ref_Density: in
   Density_type; Percent_Diff: in out Long_Float) is
   diff,
   Abs_Diff: Long_Float;
begin
   diff := ((Long_Float(Ref_Density.Density) - Long_Float(Item_Density.Density))
   / Long_Float(Ref_Density.Density));
   Abs_diff := abs(diff);
   Percent_Diff := (1.0 - Abs_Diff) * 100.0;
end Density.Purity;
