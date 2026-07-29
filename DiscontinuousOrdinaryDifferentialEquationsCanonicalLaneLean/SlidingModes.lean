import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure SlidingModesPackage where
  slidingSurface : Prop
  equivalentControl : Prop
  reducedOrderDynamics : Prop
  stabilityBoundary : Prop
  chatteringSuppression : Prop

structure SlidingModesEvidence (S : SlidingModesPackage) where
  slidingSurfaceClosed : S.slidingSurface
  equivalentControlClosed : S.equivalentControl
  reducedOrderDynamicsClosed : S.reducedOrderDynamics
  stabilityBoundaryClosed : S.stabilityBoundary
  chatteringSuppressionClosed : S.chatteringSuppression

def SlidingModesClosed (S : SlidingModesPackage) : Prop :=
  S.slidingSurface ∧ S.equivalentControl ∧ S.reducedOrderDynamics ∧
  S.stabilityBoundary ∧ S.chatteringSuppression

theorem sliding_modes_closed_from_evidence (S : SlidingModesPackage)
    (E : SlidingModesEvidence S) : SlidingModesClosed S := by
  exact And.intro E.slidingSurfaceClosed
    (And.intro E.equivalentControlClosed
      (And.intro E.reducedOrderDynamicsClosed
        (And.intro E.stabilityBoundaryClosed E.chatteringSuppressionClosed)))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse