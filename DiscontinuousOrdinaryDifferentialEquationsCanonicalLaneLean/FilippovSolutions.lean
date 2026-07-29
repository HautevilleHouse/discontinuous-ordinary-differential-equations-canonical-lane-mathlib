import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.DiscontinuousODE

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

/-!
# Filippov Solutions Package
-/

structure FilippovSolutionPackage {P : DiscontinuousODEPackage} where
  convexDifferentialInclusion : Prop
  absolutelyContinuous : Prop
  satisfiesAlmostEverywhere : Prop

structure FilippovSolutionEvidence {P : DiscontinuousODEPackage}
    (F : FilippovSolutionPackage P) where
  convexDifferentialInclusionClosed : F.convexDifferentialInclusion
  absolutelyContinuousClosed : F.absolutelyContinuous
  satisfiesAlmostEverywhereClosed : F.satisfiesAlmostEverywhere

def FilippovSolutionClosed {P : DiscontinuousODEPackage}
    (F : FilippovSolutionPackage P) : Prop :=
  F.convexDifferentialInclusion ∧ F.absolutelyContinuous ∧ F.satisfiesAlmostEverywhere

theorem filippov_solution_closed_from_evidence {P : DiscontinuousODEPackage}
    (F : FilippovSolutionPackage P) (E : FilippovSolutionEvidence F) :
    FilippovSolutionClosed F := by
  exact And.intro E.convexDifferentialInclusionClosed
    (And.intro E.absolutelyContinuousClosed E.satisfiesAlmostEverywhereClosed)

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse