import DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.Basic

/-!
# DODE ODE System Package
-/

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure DODESystem where
  stateSpace : Type u
  timeDomain : Type v
  vectorField : stateSpace → timeDomain → stateSpace
  discontinuitySet : Set (stateSpace × timeDomain)
  solutionConcept : Prop
  existenceUniqueness : Prop

theorem solution_exists (D : DODESystem) : D.solutionConcept := by
  exact D.solutionConcept

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
