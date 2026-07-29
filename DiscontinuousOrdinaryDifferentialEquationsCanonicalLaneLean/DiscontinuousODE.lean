import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

/-!
# Discontinuous Ordinary Differential Equations Package
-/

structure DiscontinuousODEPackage where
  stateSpace : Type u
  timeDomain : Type v
  vectorField : stateSpace → stateSpace
  discontinuitySet : Set stateSpace
  piecewiseSmooth : Prop
  uniqueContinuation : Prop

structure DiscontinuousODEEvidence (P : DiscontinuousODEPackage) where
  piecewiseSmoothClosed : P.piecewiseSmooth
  uniqueContinuationClosed : P.uniqueContinuation

def DiscontinuousODEClosed (P : DiscontinuousODEPackage) : Prop :=
  P.piecewiseSmooth ∧ P.uniqueContinuation

theorem discontinuous_ode_closed_from_evidence (P : DiscontinuousODEPackage)
    (E : DiscontinuousODEEvidence P) : DiscontinuousODEClosed P := by
  exact And.intro E.piecewiseSmoothClosed E.uniqueContinuationClosed

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse