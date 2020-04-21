with Array_List_Package;

procedure Main is
   List: Array_List_Package.Array_List_Type;
   Copy: Array_List_Package.Array_List_Type;
   Ptr: Array_List_Package.Array_List_Access_Type;
   Ptr_Cpy: Array_List_Package.Array_List_Access_Type;
   Result: Boolean;
begin
   Array_List_Package.Init(List, 10);
   Array_List_Package.Init(Copy, 10);
   Array_List_Package.Add(List, 5, Result);
   Array_List_Package.Add(List, 7, Result);
   Array_List_Package.Add(List, 2, Result);
   Array_List_Package.Add(List, 6, Result);
   Array_List_Package.Add(List, 1, Result);
   Array_List_Package.Add(List, 17, Result);
   Array_List_Package.Add(List, 3, Result);
   Array_List_Package.Add(List, 9, Result);
   Array_List_Package.Add(List, 57, Result);
   Array_List_Package.Add(List, 17, Result);
   Array_List_Package.Add(List, 8, Result);
   Array_List_Package.Put_Line(List);
   Array_List_Package.Remove(List, Array_List_Package.Index_Type(7), Result);
   Array_List_Package.Remove(List, Array_List_Package.Data_Type(7), Result);
   Array_List_Package.Put_Line(List);
   Array_List_Package.Copy(List, Copy);
   Array_List_Package.Put_Line(Copy);
   Array_List_Package.Create(10, Ptr);
   Array_List_Package.Add(Ptr, 5, Result);
   Array_List_Package.Add(Ptr, 7, Result);
   Array_List_Package.Add(Ptr, 2, Result);
   Array_List_Package.Add(Ptr, 6, Result);
   Array_List_Package.Add(Ptr, 1, Result);
   Array_List_Package.Add(Ptr, 17, Result);
   Array_List_Package.Add(Ptr, 3, Result);
   Array_List_Package.Add(Ptr, 9, Result);
   Array_List_Package.Add(Ptr, 57, Result);
   Array_List_Package.Add(Ptr, 17, Result);
   Array_List_Package.Add(Ptr, 8, Result);
   Array_List_Package.Put_Line(Ptr);
   Array_List_Package.Remove(Ptr, Array_List_Package.Index_Type(7), Result);
   Array_List_Package.Remove(Ptr, Array_List_Package.Data_Type(7), Result);
   Array_List_Package.Put_Line(Ptr);
   Array_List_Package.Create(10, Ptr_Cpy);
   Array_List_Package.Copy(Ptr, Ptr_Cpy);
   Array_List_Package.Put_Line(Ptr_Cpy);

end Main;

   
   
   
