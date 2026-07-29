import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure FilippovSolutionPackage where
  differentialInclusion : Prop
  setValuedMap : Prop
  convexHullClosure : Prop
  absolutelyContinuousSolution : Prop
  existenceTheorem : Prop
  
structure FilippovSolutionEvidence (F : FilippovSolutionPackage) where
  differentialInclusionClosed : F.differentialInclusion
  setValuedMapClosed : F.setValuedMap
  convexHullClosureClosed : F.convexHullClosure
  absolutelyContinuousSolutionClosed : F.absolutelyContinuousSolution
  existenceTheoremClosed : F.existenceTheorem

def FilippovSolutionClosed (F : FilippovSolutionPackage) : Prop :=
  F.differentialInclusion ∧ F.setValuedMap ∧ F.convexHullClosure ∧ F.absolutelyContinuousSolution ∧ F.existenceTheorem

theorem filippov_solution_closed_from_evidence (F : FilippovSolutionPackage) (E : FilippovSolutionEvidence F) :
    FilippovSolutionClosed F := by
  exact And.intro E.differentialInclusionClosed
    (And.intro E.setValuedMapClosed
      (And.intro E.convexHullClosureClosed
        (And.intro E.absolutelyContinuousSolutionClosed E.existenceTheoremClosed)))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse