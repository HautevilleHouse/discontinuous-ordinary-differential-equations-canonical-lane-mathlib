import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure ConvexAnalysisDiscontinuousPackage where
  proximalOperator : Type u → Type u
  subdifferential : Type u → Type u
  maximalMonotone : Prop
  resolventEquation : Prop

structure ConvexAnalysisDiscontinuousEvidence
    (Ca : ConvexAnalysisDiscontinuousPackage) where
  proximalOperatorClosed : Ca.proximalOperator
  subdifferentialClosed : Ca.subdifferential
  maximalMonotoneClosed : Ca.maximalMonotone
  resolventEquationClosed : Ca.resolventEquation

def ConvexAnalysisDiscontinuousClosed
    (Ca : ConvexAnalysisDiscontinuousPackage) : Prop :=
  Ca.proximalOperator ∧ Ca.subdifferential ∧ Ca.maximalMonotone ∧ Ca.resolventEquation

theorem convex_analysis_discontinuous_closed_from_evidence
    (Ca : ConvexAnalysisDiscontinuousPackage)
    (E : ConvexAnalysisDiscontinuousEvidence Ca) :
    ConvexAnalysisDiscontinuousClosed Ca := by
  exact And.intro E.proximalOperatorClosed
    (And.intro E.subdifferentialClosed
      (And.intro E.maximalMonotoneClosed E.resolventEquationClosed))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse