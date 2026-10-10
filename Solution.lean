module
public import Mathlib.NumberTheory.Real.Irrational

@[expose] public section

theorem smoke : Irrational (Real.sqrt 2) := irrational_sqrt_two
