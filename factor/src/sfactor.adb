package body sfactor with SPARK_Mode is

   procedure Smallest_Factor
     (N : in out Positive;
      Factor : out Positive)
   is
   begin
      Factor := 2;
      while N rem Factor /= 0 loop
         pragma Loop_Invariant (Factor < N and
                                (for all J in 2 .. Factor => N rem J /= 0));
         Factor := Factor + 1;
      end loop;
      N := N / Factor;
   end Smallest_Factor;

end sfactor;
