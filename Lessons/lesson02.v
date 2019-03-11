Inductive bool : Type :=
   | true
   | false.

Inductive rgb : Type :=
   | red
   | green
   | blue.

Inductive color : Type :=
   | black
   | white
   | primary (p : rgb).

Definition monochrome (c : color) : bool :=
   match c with
   | black => true
   | white => true
   | primary q => false
   end.

Definition isred (c : color) : bool :=
   match c with
   | black => false
   | white => false
   | primary red => true
   | primary _ => false
   end.

Inductive bit : Type :=
   | B0
   | B1.

Inductive nybble : Type :=
   | bits (b0 b1 b2 b3 : bit).

Check (bits B1 B0 B1 B0).

Definition all_zero (nb : nybble) : bool :=
   match nb with
   | (bits B0 B0 B0 B0) => true
   | (bits _ _ _ _) => false
   end.

   Compute (all_zero (bits B0 B0 B0 B0)).

   Compute (all_zero (bits B1 B1 B1 B1)).

Inductive nat : Type :=
   | O
   | S (n : nat).
  
Definition pred (n : nat) : nat :=
   | O
   | S n' => n'.
 

    