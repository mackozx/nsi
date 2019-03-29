with Ada.Text_IO;
use Ada.Text_IO;
with Selection;

procedure Main is
   To_Sort : Selection.Arr := (4, 5, 1, 3, 5, -4);
begin
   Selection.Sort(To_Sort);
   for I in To_Sort'Range
   loop
      Put(Integer'Image(To_Sort(I)));
   end loop;
end Main;
