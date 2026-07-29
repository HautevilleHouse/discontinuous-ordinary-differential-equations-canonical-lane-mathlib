import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure DiscontinuousODEClass where
  odeObject : DODEAdmittedObject
  filippovSolution : Prop
  slidingModeCondition : Prop
  uniquenessForward : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DiscontinuousODEClass) : Prop :=
  DODEWitnessClosed A.odeObject ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse