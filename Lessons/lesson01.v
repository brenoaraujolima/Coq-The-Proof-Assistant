

Inductive day : Type :=
    |monday
    |tuesday
    |wednesday
    |thursday
    |friday
    |saturday
    |sunday.

Definition next_weekday (d:day) : day :=
    match d with
    | monday => tuesday
    | tuesday => wednesday
    | wednesday => thursday
    | thursday => friday
    | saturday => sunday
    end.

Compute (next_weekday friday).

Compute (next_weekday (next_weekday sunday)).

Example test_next_weekday:
    (next_weekday (next_weekday saturday)) = monday.
Proof. simpl. reflexivity. Qed.

Inductive bool : Type :=
    | true
    | false.

Definition negb (b:bool) : bool :=
    match b with
    | true => false
    | false => true
    end.

Definition andb (b1:bool) (b2:bool) : bool :=
    match b1 with
    | false => b1
    | true => b2
    end.

Definition orb (b1:bool) (b2:bool) : bool :=
    match b1 with
    | true => b1
    | false => b2
    end.