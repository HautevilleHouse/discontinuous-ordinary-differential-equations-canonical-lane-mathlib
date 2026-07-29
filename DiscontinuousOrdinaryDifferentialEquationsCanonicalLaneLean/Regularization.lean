import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure RegularizationPackage where
  continuousApproximation : Prop
  convergenceRate : Prop
  epsilonRegularization : Prop
  singularPerturbation : Prop
  errorBound : Prop

structure RegularizationEvidence (R : RegularizationPackage) where
  continuousApproximationClosed : R.continuousApproximation
  convergenceRateClosed : R.convergenceRate
  epsilonRegularizationClosed : R.epsilonRegularization
  singularPerturbationClosed : R.singularPerturbation
  errorBoundClosed : R.errorBound

def RegularizationClosed (R : RegularizationPackage) : Prop :=
  R.continuousApproximation ∧ R.convergenceRate ∧ R.epsilonRegularization ∧
  R.singularPerturbation ∧ R.errorBound

theorem regularization_closed_from_evidence (R : RegularizationPackage)
    (E : RegularizationEvidence R) : RegularizationClosed R := by
  exact And.intro E.continuousApproximationClosed
    (And.intro E.convergenceRateClosed
      (And.intro E.epsilonRegularizationClosed
        (And.intro E.singularPerturbationClosed E.errorBoundClosed)))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse