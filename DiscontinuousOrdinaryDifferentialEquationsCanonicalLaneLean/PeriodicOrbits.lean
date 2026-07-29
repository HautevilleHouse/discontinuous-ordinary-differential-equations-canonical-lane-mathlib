import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.DiscontinuousODE

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

/-!
# Periodic Orbits Package
-/

structure PeriodicOrbitsPackage {P : DiscontinuousODEPackage} where
  poincareMapDefined : Prop
  fixedPointExistence : Prop
  orbitalStability : Prop

structure PeriodicOrbitsEvidence {P : DiscontinuousODEPackage}
    (O : PeriodicOrbitsPackage P) where
  poincareMapDefinedClosed : O.poincareMapDefined
  fixedPointExistenceClosed : O.fixedPointExistence
  orbitalStabilityClosed : O.orbitalStability

def PeriodicOrbitsClosed {P : DiscontinuousODEPackage}
    (O : PeriodicOrbitsPackage P) : Prop :=
  O.poincareMapDefined ∧ O.fixedPointExistence ∧ O.orbitalStability

theorem periodic_orbits_closed_from_evidence {P : DiscontinuousODEPackage}
    (O : PeriodicOrbitsPackage P) (E : PeriodicOrbitsEvidence O) :
    PeriodicOrbitsClosed O := by
  exact And.intro E.poincareMapDefinedClosed
    (And.intro E.fixedPointExistenceClosed E.orbitalStabilityClosed)

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse