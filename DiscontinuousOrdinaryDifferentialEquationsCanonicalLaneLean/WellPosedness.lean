import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure WellPosednessPackage where
  existenceInCaratheodorySense : Prop
  uniquenessUnderRegularization : Prop
  continuousDependence : Prop
  stabilityUnderPerturbation : Prop
  maximalSolutionInterval : Prop

structure WellPosednessEvidence (W : WellPosednessPackage) where
  existenceInCaratheodorySenseClosed : W.existenceInCaratheodorySense
  uniquenessUnderRegularizationClosed : W.uniquenessUnderRegularization
  continuousDependenceClosed : W.continuousDependence
  stabilityUnderPerturbationClosed : W.stabilityUnderPerturbation
  maximalSolutionIntervalClosed : W.maximalSolutionInterval

def WellPosednessClosed (W : WellPosednessPackage) : Prop :=
  W.existenceInCaratheodorySense ∧ W.uniquenessUnderRegularization ∧
  W.continuousDependence ∧ W.stabilityUnderPerturbation ∧
  W.maximalSolutionInterval

theorem well_posedness_closed_from_evidence (W : WellPosednessPackage)
    (E : WellPosednessEvidence W) : WellPosednessClosed W := by
  exact And.intro E.existenceInCaratheodorySenseClosed
    (And.intro E.uniquenessUnderRegularizationClosed
      (And.intro E.continuousDependenceClosed
        (And.intro E.stabilityUnderPerturbationClosed E.maximalSolutionIntervalClosed)))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse