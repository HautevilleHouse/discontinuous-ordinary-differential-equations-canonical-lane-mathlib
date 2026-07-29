import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure SlidingModeDynamicsPackage where
  switchingSurface : Type u → Prop
  slidingVectorField : Type u → Type u
  equivalentControl : Prop
  stabilityCondition : Prop

structure SlidingModeDynamicsEvidence (Sm : SlidingModeDynamicsPackage) where
  switchingSurfaceClosed : Sm.switchingSurface
  slidingVectorFieldClosed : Sm.slidingVectorField
  equivalentControlClosed : Sm.equivalentControl
  stabilityConditionClosed : Sm.stabilityCondition

def SlidingModeDynamicsClosed (Sm : SlidingModeDynamicsPackage) : Prop :=
  Sm.switchingSurface ∧ SlidingModeDynamicsEvidence.equivalentControlClosed Sm

theorem sliding_mode_dynamics_closed_from_evidence
    (Sm : SlidingModeDynamicsPackage) (E : SlidingModeDynamicsEvidence Sm) :
    SlidingModeDynamicsClosed Sm := by
  exact And.intro E.switchingSurfaceClosed E.equivalentControlClosed

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse