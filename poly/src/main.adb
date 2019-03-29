with Ada.Text_IO; use Ada.Text_IO;
with Poly;

procedure Main is
   Vec : Poly.Vector := (4, 3, -2);
   X : Integer := 3;
   R : Integer;
begin
   R := Poly.Horner(X, Vec);
   Put(Integer'Image(R));
end Main;

