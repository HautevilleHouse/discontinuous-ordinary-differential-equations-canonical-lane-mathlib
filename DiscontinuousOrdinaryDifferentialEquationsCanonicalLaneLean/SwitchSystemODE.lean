import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure SwitchSystemODEPackage where
  stateSpace : Type u
  vectorFields : List (stateSpace → stateSpace)
  switchingSignals : List (stateSpace → Bool)
  solutionConcept : Prop
  existenceConditions : Prop
  uniquenessConditions : Prop
  
structure SwitchSystemODEEvidence (S : SwitchSystemODEPackage) where
  solutionConceptClosed : S.solutionConcept
  existenceConditionsClosed : S.existenceConditions
  uniquenessConditionsClosed : S.uniquenessConditions

def SwitchSystemODEClosed (S : SwitchSystemODEPackage) : Prop :=
  S.solutionConcept ∧ S.existenceConditions ∧ S.uniquenessConditions

theorem switch_system_ode_closed_from_evidence (S : SwitchSystemODEPackage) (E : SwitchSystemODEEvidence S) :
    SwitchSystemODEClosed S := by
  exact And.intro E.solutionConceptClosed (And.intro E.existenceConditionsClosed E.uniquenessConditionsClosed)

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse