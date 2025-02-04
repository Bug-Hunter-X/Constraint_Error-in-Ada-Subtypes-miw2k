```ada
procedure Example_Solution is
   subtype My_Subtype is Integer range 1..10;
   My_Variable : My_Subtype;
begin
   begin
      My_Variable := 11; -- This will raise Constraint_Error
   exception
      when Constraint_Error =>
         Put_Line("Error: Value outside subtype range.");
         My_Variable := My_Subtype'First; -- Assign a default value
   end;
   Put_Line("My_Variable: " & My_Variable'Image);
end Example_Solution;
```