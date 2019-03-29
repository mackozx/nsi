with Ada.Text_IO; use Ada.Text_IO;

package body Poly with SPARK_Mode is

   function Horner (X : in Integer; A : in Vector) return Integer is
      Result : Integer := 0;
   begin
      pragma Assert (Result = 0);

      if A'Length <= 1 then
         return A(A'First);
      else
         return A(A'First) + X * Horner(X, A(A'First + 1 .. A'Last));
      end if;

      --for I in A'Range loop
      --   Result := Result * X;
      --   Result := Result + A(I);
      --end loop;
      --return Result;
   end Horner;
end Poly;

