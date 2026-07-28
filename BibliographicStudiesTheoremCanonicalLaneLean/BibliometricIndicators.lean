import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure BibliometricIndicatorsPackage where
  citationCount : Nat
  impactFactor : Float
  hIndex : Nat

def BibliometricIndicatorsClosed (I : BibliometricIndicatorsPackage) : Prop :=
  I.citationCount ≥ 0 ∧ I.impactFactor ≥ 0.0 ∧ I.hIndex ≥ 0

structure BibliometricIndicatorsEvidence (I : BibliometricIndicatorsPackage) where
  citationCountNonneg : I.citationCount ≥ 0
  impactFactorNonneg : I.impactFactor ≥ 0.0
  hIndexNonneg : I.hIndex ≥ 0

theorem bibliometric_indicators_closed_from_evidence (I : BibliometricIndicatorsPackage) (E : BibliometricIndicatorsEvidence I) : BibliometricIndicatorsClosed I := by
  exact And.intro E.citationCountNonneg (And.intro E.impactFactorNonneg E.hIndexNonneg)

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse