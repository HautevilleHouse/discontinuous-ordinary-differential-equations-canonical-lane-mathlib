import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

structure SweepingProcessPackage where
  movingSet : Type u → Type u
  normalCone : Type u → Type u
  sweepingEquation : Prop
  solutionExistence : Prop
  uniqueness : Prop

structure SweepingProcessEvidence (Sw : SweepingProcessPackage) where
  movingSetClosed : Sw.movingSet
  normalConeClosed : Sw.normalCone
  sweepingEquationClosed : Sw.sweepingEquation
  solutionExistenceClosed : Sw.solutionExistence
  uniquenessClosed : Sw.uniqueness

def SweepingProcessClosed (Sw : SweepingProcessPackage) : Prop :=
  Sw.movingSet ∧ Sw.normalCone ∧ Sw.sweepingEquation ∧ Sw.solutionExistence ∧ Sw.uniqueness

theorem sweeping_process_closed_from_evidence
    (Sw : SweepingProcessPackage) (E : SweepingProcessEvidence Sw) :
    SweepingProcessClosed Sw := by
  exact And.intro E.movingSetClosed
    (And.intro E.normalConeClosed
      (And.intro E.sweepingEquationClosed
        (And.intro E.solutionExistenceClosed E.uniquenessClosed)))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse