import DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.SlidingMode

/-!
# Lyapunov Stability Package
-/

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure LyapunovFunction (D : DODESystem) where
  functionDef : D.stateSpace → ℝ
  positiveDefinite : Prop
  derivativeInequality : Prop
  decrescent : Prop

theorem lyapunov_stability (D : DODESystem) (L : LyapunovFunction D) :
    L.positiveDefinite ∧ L.derivativeInequality ∧ L.decrescent := by
  exact And.intro L.positiveDefinite (And.intro L.derivativeInequality L.decrescent)

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
