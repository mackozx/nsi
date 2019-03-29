with Ada.Text_IO; use Ada.Text_IO;
with sfactor; use sfactor;

procedure Main is
   Factor : Positive;
   N : Positive;
begin
   N := 11;
   Put("Liczba = ");
   Put(Integer'Image(N));
   Put_Line("");

   sfactor.Smallest_Factor(N, Factor);
   Put("Najmniejszy dzielnik = ");
   Put(Integer'Image(Factor));

   Put_Line("");
   Put("Liczba po podzieleniu przez najmniejszy dzielnik = ");
   Put(Integer'Image(N));
end Main;
