with List_Package;

procedure Main is
   My_List1: List_Package.Link_List_Type;
   -- My_List2: List_Package.Link_List_Type;
begin
   List_Package.Add_To_Head(2, My_List1);
   List_Package.Add_To_Head(4, My_List1);
   List_Package.Add_To_Head(6, My_List1);
   List_Package.Add_To_Head(8, My_List1);
   List_Package.Put_Line(My_List1);
   
   -- List_Package.Add_To_Tail(2, My_List2);
   -- List_Package.Add_To_Tail(4, My_List2);
   -- List_Package.Add_To_Tail(6, My_List2);
   -- List_Package.Add_To_Tail(8, My_List2);
   -- List_Package.Put_Line(My_List2);
end Main;

   
