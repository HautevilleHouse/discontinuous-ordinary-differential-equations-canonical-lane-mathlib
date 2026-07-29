import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure DifferentialInclusionRegularizationPackage where
  setValuedMap : Type u → Type u
  upperSemicontinuous : Prop
  convexCompactValues : Prop
  regularizedRightHandSide : Type u → Type u
  equivalenceUnderSolutions : Prop

structure DifferentialInclusionRegularizationEvidence
    (Di : DifferentialInclusionRegularizationPackage) where
  upperSemicontinuousClosed : Di.upperSemicontinuous
  convexCompactValuesClosed : Di.convexCompactValues
  equivalenceUnderSolutionsClosed : Di.equivalenceUnderSolutions

def DifferentialInclusionRegularizationClosed
    (Di : DifferentialInclusionRegularizationPackage) : Prop :=
  Di.upperSemicontinuous ∧ Di.convexCompactValues ∧ Di.equivalenceUnderSolutions

theorem differential_inclusion_regularization_closed_from_evidence
    (Di : DifferentialInclusionRegularizationPackage)
    (E : DifferentialInclusionRegularizationEvidence Di) :
    DifferentialInclusionRegularizationClosed Di := by
  exact And.intro E.upperSemicontinuousClosed
    (And.intro E.convexCompactValuesClosed E.equivalenceUnderSolutionsClosed)

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse