import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

def bridgeClosed (A : DiscontinuousODEClass) : Prop :=
  DODEWitnessClosed A.odeObject

theorem bridge_from_admissible_class (A : DiscontinuousODEClass) :
    bridgeClosed A := by
  exact A.odeObject.conclusion

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse