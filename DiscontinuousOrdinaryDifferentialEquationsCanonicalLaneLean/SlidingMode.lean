import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.FilippovSolution

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure SlidingModePackage {A : DiscontinuousODEClass} (F : FilippovSolutionPackage A) where
  slidingSurface : Submanifold
  equivalentControl : Prop
  reachabilityFiniteTime : Prop
  stabilityOnSurface : Prop

def SlidingModeClosed (S : SlidingModePackage) : Prop :=
  S.equivalentControl ∧ S.reachabilityFiniteTime ∧ S.stabilityOnSurface

structure SlidingModeEvidence (S : SlidingModePackage) where
  equivalentControlClosed : S.equivalentControl
  reachabilityFiniteTimeClosed : S.reachabilityFiniteTime
  stabilityOnSurfaceClosed : S.stabilityOnSurface

theorem sliding_mode_closed (S : SlidingModePackage) (E : SlidingModeEvidence S) :
    SlidingModeClosed S := by
  exact And.intro E.equivalentControlClosed
    (And.intro E.reachabilityFiniteTimeClosed E.stabilityOnSurfaceClosed)

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse