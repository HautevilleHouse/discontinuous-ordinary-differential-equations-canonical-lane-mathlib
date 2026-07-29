import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.DiscontinuousODE

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

/-!
# Lyapunov Exponents Package
-/

structure LyapunovExponentsPackage {P : DiscontinuousODEPackage} where
  fundamentalSolution : Prop
  oseledetsTheorem : Prop
  exponentSpectrum : Prop
  regularity : Prop

structure LyapunovExponentsEvidence {P : DiscontinuousODEPackage}
    (L : LyapunovExponentsPackage P) where
  fundamentalSolutionClosed : L.fundamentalSolution
  oseledetsTheoremClosed : L.oseledetsTheorem
  exponentSpectrumClosed : L.exponentSpectrum
  regularityClosed : L.regularity

def LyapunovExponentsClosed {P : DiscontinuousODEPackage}
    (L : LyapunovExponentsPackage P) : Prop :=
  L.fundamentalSolution ∧ L.oseledetsTheorem ∧ L.exponentSpectrum ∧ L.regularity

theorem lyapunov_exponents_closed_from_evidence {P : DiscontinuousODEPackage}
    (L : LyapunovExponentsPackage P) (E : LyapunovExponentsEvidence L) :
    LyapunovExponentsClosed L := by
  exact And.intro E.fundamentalSolutionClosed
    (And.intro E.oseledetsTheoremClosed
      (And.intro E.exponentSpectrumClosed E.regularityClosed))

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse