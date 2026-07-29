import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

def ConstrainedDODEClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dode_endgame (A : AdmissibleClass) :
    ConstrainedDODEClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse