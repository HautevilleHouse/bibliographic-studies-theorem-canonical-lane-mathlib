import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibliographicStudiesTheoremCanonicalLaneLean.BibliographicCoupling

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure CoCitationAnalysisPackage {G : CitationGraphPackage} (B : BibliographicCouplingPackage G) where
  coCitationCount : G.nodeSet → G.nodeSet → ℕ
  similarityMatrix : G.nodeSet → G.nodeSet → ℝ
  normalization : Prop
  similarityComputed : Prop

structure CoCitationAnalysisEvidence {G : CitationGraphPackage} {B : BibliographicCouplingPackage G} (C : CoCitationAnalysisPackage B) where
  normalizationClosed : C.normalization
  similarityComputedClosed : C.similarityComputed

def CoCitationAnalysisClosed {G : CitationGraphPackage} {B : BibliographicCouplingPackage G} (C : CoCitationAnalysisPackage B) : Prop :=
  C.normalization ∧ C.similarityComputed

theorem co_citation_analysis_closed_from_evidence {G : CitationGraphPackage} {B : BibliographicCouplingPackage G} (C : CoCitationAnalysisPackage B) (E : CoCitationAnalysisEvidence C) :
    CoCitationAnalysisClosed C := by
  exact And.intro E.normalizationClosed E.similarityComputedClosed

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse