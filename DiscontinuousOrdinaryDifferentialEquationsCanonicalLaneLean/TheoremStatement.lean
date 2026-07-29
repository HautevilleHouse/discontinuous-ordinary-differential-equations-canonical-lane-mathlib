import DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure DifferentialInclusionWitnessClosed (O : AdmissibleDifferentialInclusionObject) : Prop where
  solutionExists : O.solutionExists

def sourceRepository : String :=
  "DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean"

def sourceDescription : String :=
  "Differential inclusion solution existence for admissible multi-valued dynamics"

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse