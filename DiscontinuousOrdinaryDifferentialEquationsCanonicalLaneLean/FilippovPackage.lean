import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure FilippovRegularizationPackage where
  switchingSurface : Prop
  convexRegularization : Prop
  differentialInclusion : Prop
  existenceCondition : Prop
  uniquenessCondition : Prop

structure FilippovRegularizationEvidence (F : FilippovRegularizationPackage) where
  switchingSurfaceClosed : F.switchingSurface
  convexRegularizationClosed : F.convexRegularization
  differentialInclusionClosed : F.differentialInclusion
  existenceConditionClosed : F.existenceCondition
  uniquenessConditionClosed : F.uniquenessCondition

def FilippovRegularizationClosed (F : FilippovRegularizationPackage) : Prop :=
  F.switchingSurface ∧ F.convexRegularization ∧ F.differentialInclusion ∧
  F.existenceCondition ∧ F.uniquenessCondition

theorem filippov_regularization_closed_from_evidence (F : FilippovRegularizationPackage)
    (E : FilippovRegularizationEvidence F) : FilippovRegularizationClosed F := by
  exact And.intro E.switchingSurfaceClosed
    (And.intro E.convexRegularizationClosed
      (And.intro E.differentialInclusionClosed
        (And.intro E.existenceConditionClosed E.uniquenessConditionClosed)))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse