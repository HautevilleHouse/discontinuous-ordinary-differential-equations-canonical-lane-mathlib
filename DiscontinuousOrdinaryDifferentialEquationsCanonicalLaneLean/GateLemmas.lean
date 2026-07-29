import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

def gateClosed (A : DiscontinuousODEClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DiscontinuousODEClass) :
    gateClosed A := by
  exact A.gateWitness

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse