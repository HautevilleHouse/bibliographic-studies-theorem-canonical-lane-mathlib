import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibliographicStudiesTheoremCanonicalLaneLean.CitationGraph

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure BibliographicCouplingPackage {G : CitationGraphPackage} where
  couplingMeasure : G.nodeSet → G.nodeSet → ℝ
  threshold : ℝ
  couplingGraph : G.nodeSet → G.nodeSet → Prop
  couplingDefined : Prop
  thresholdRespected : Prop

structure BibliographicCouplingEvidence {G : CitationGraphPackage} (B : BibliographicCouplingPackage G) where
  couplingDefinedClosed : B.couplingDefined
  thresholdRespectedClosed : B.thresholdRespected

def BibliographicCouplingClosed {G : CitationGraphPackage} (B : BibliographicCouplingPackage G) : Prop :=
  B.couplingDefined ∧ B.thresholdRespected

theorem bibliographic_coupling_closed_from_evidence {G : CitationGraphPackage} (B : BibliographicCouplingPackage G) (E : BibliographicCouplingEvidence B) :
    BibliographicCouplingClosed B := by
  exact And.intro E.couplingDefinedClosed E.thresholdRespectedClosed

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse