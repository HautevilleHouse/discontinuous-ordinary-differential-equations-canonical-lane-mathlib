import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.DiscontinuousODE

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

/-!
# Aizerman Conjecture Package
-/

structure AizermanConjecturePackage {P : DiscontinuousODEPackage} where
  linearPartStable : Prop
  nonlinearitySector : Prop
  absoluteStability : Prop

structure AizermanConjectureEvidence {P : DiscontinuousODEPackage}
    (A : AizermanConjecturePackage P) where
  linearPartStableClosed : A.linearPartStable
  nonlinearitySectorClosed : A.nonlinearitySector
  absoluteStabilityClosed : A.absoluteStability

def AizermanConjectureClosed {P : DiscontinuousODEPackage}
    (A : AizermanConjecturePackage P) : Prop :=
  A.linearPartStable ∧ A.nonlinearitySector ∧ A.absoluteStability

theorem aizerman_conjecture_closed_from_evidence {P : DiscontinuousODEPackage}
    (A : AizermanConjecturePackage P) (E : AizermanConjectureEvidence A) :
    AizermanConjectureClosed A := by
  exact And.intro E.linearPartStableClosed
    (And.intro E.nonlinearitySectorClosed E.absoluteStabilityClosed)

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse