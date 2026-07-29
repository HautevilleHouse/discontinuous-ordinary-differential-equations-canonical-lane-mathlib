import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure LyapunovTheoryDiscontinuousPackage where
  lyapunovFunction : Type u → Type u
  generalizedDerivative : Prop
  stabilityCriterion : Prop
  asymptoticStability : Prop

structure LyapunovTheoryDiscontinuousEvidence
    (Lt : LyapunovTheoryDiscontinuousPackage) where
  lyapunovFunctionClosed : Lt.lyapunovFunction
  generalizedDerivativeClosed : Lt.generalizedDerivative
  stabilityCriterionClosed : Lt.stabilityCriterion
  asymptoticStabilityClosed : Lt.asymptoticStability

def LyapunovTheoryDiscontinuousClosed
    (Lt : LyapunovTheoryDiscontinuousPackage) : Prop :=
  Lt.lyapunovFunction ∧ Lt.generalizedDerivative ∧ Lt.stabilityCriterion ∧ Lt.asymptoticStability

theorem lyapunov_theory_discontinuous_closed_from_evidence
    (Lt : LyapunovTheoryDiscontinuousPackage)
    (E : LyapunovTheoryDiscontinuousEvidence Lt) :
    LyapunovTheoryDiscontinuousClosed Lt := by
  exact And.intro E.lyapunovFunctionClosed
    (And.intro E.generalizedDerivativeClosed
      (And.intro E.stabilityCriterionClosed E.asymptoticStabilityClosed))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse