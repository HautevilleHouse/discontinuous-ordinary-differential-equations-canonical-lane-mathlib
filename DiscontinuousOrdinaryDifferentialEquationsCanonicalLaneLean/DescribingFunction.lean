import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure DescribingFunctionPackage where
  periodicOscillation : Prop
  harmonicBalance : Prop
  gainPhaseMargin : Prop
  stabilityPrediction : Prop
  limitCycleAmplitude : Prop

structure DescribingFunctionEvidence (D : DescribingFunctionPackage) where
  periodicOscillationClosed : D.periodicOscillation
  harmonicBalanceClosed : D.harmonicBalance
  gainPhaseMarginClosed : D.gainPhaseMargin
  stabilityPredictionClosed : D.stabilityPrediction
  limitCycleAmplitudeClosed : D.limitCycleAmplitude

def DescribingFunctionClosed (D : DescribingFunctionPackage) : Prop :=
  D.periodicOscillation ∧ D.harmonicBalance ∧ D.gainPhaseMargin ∧
  D.stabilityPrediction ∧ D.limitCycleAmplitude

theorem describing_function_closed_from_evidence (D : DescribingFunctionPackage)
    (E : DescribingFunctionEvidence D) : DescribingFunctionClosed D := by
  exact And.intro E.periodicOscillationClosed
    (And.intro E.harmonicBalanceClosed
      (And.intro E.gainPhaseMarginClosed
        (And.intro E.stabilityPredictionClosed E.limitCycleAmplitudeClosed)))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse