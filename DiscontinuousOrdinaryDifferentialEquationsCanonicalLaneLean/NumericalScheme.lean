import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.SlidingMode

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure NumericalSchemePackage (A : DiscontinuousODEClass) where
  timeDiscretization : Type u
  stepSize : ℝ
  convergenceOrder : Nat
  consistency : Prop
  stability : Prop

def NumericalSchemeClosed (N : NumericalSchemePackage) : Prop :=
  N.consistency ∧ N.stability

structure NumericalSchemeEvidence (N : NumericalSchemePackage) where
  consistencyClosed : N.consistency
  stabilityClosed : N.stability

theorem numerical_scheme_closed (N : NumericalSchemePackage) (E : NumericalSchemeEvidence N) :
    NumericalSchemeClosed N := by
  exact And.intro E.consistencyClosed E.stabilityClosed

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse