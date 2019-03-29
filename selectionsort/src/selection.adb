with Ada.Text_IO;
use Ada.Text_IO;

package body Selection with SPARK_Mode is
   
   function Min_Index (A : in Arr) return Integer
   with
       Pre => A'Length > 0,
       Post => Min_Index'Result in A'Range and then
       (for all I in A'Range => A(Min_Index'Result) <= A(I))
   is
      Min : Integer;
   begin
      Min := A'First;
      for I in A'Range loop
         if A(I) < A(Min) then
            Min := I;
         end if;
         pragma Loop_Invariant (Min in A'Range and then
                                  (for all K in A'First..I =>
                                     A(Min) <= A(K)));
      end loop;
      return Min;
   end Min_Index;
   
   procedure Sort (A : in out Arr) is
      Min : Integer;
      Tmp : Integer;
   begin
      for I in A'Range loop
         Min := Min_Index(A(I..A'Last));
         if Min /= I then
            Tmp := A(I);
            A(I) := A(Min);
            A(Min) := Tmp;
         end if;
         pragma Loop_Invariant (for all K in A'First..I =>
                                  (for all L in K + 1..A'Last =>
                                     A(K) <= A(L)));
      end loop;
   end Sort;
end Selection;
