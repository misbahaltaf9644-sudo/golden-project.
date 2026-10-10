module
public import Mathlib.Analysis.Complex.Basic
public import Mathlib.LinearAlgebra.Matrix.Irreducible.Defs

@[expose] public section

theorem Matrix.perron_frobenius_of_isIrreducible {ι : Type*} [Fintype ι] [Nonempty ι]
    (A : Matrix ι ι ℝ) (hA : A.IsIrreducible) :
    ∃ r : ℝ, 0 < r ∧ ∃ v : ι → ℝ, (∀ i, 0 < v i) ∧ A.mulVec v = r • v ∧
      (∀ u : ι → ℝ, A.mulVec u = r • u → ∃ c : ℝ, u = c • v) ∧
      (∀ (s : ℝ) (x : ι → ℝ), (∀ i, 0 ≤ x i) → x ≠ 0 → A.mulVec x = s • x → s = r) ∧
      (∀ (μ : ℂ) (z : ι → ℂ), z ≠ 0 → (A.map ((↑) : ℝ → ℂ)).mulVec z = μ • z → ‖μ‖ ≤ r) := by
  sorry
