module
public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Data.Matrix.Mul

@[expose] public section

theorem Matrix.perron_full_of_pos {ι : Type*} [Fintype ι] [Nonempty ι]
    (A : Matrix ι ι ℝ) (hA : ∀ i j, 0 < A i j) :
    ∃ r : ℝ, 0 < r ∧ ∃ v : ι → ℝ, (∀ i, 0 < v i) ∧ A.mulVec v = r • v ∧
      (∀ u : ι → ℝ, A.mulVec u = r • u → ∃ c : ℝ, u = c • v) ∧
      (∀ (s : ℝ) (x : ι → ℝ), (∀ i, 0 ≤ x i) → x ≠ 0 → A.mulVec x = s • x → s = r) ∧
      (∀ (μ : ℂ) (z : ι → ℂ), z ≠ 0 → (A.map ((↑) : ℝ → ℂ)).mulVec z = μ • z →
        μ ≠ (r : ℂ) → ‖μ‖ < r) := by
  sorry
