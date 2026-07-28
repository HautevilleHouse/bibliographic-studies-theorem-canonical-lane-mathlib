import canonicalLaneMathlib.AdmissibleClass
import BibliographicStudiesTheoremCanonicalLaneLean.BibliographicAdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure ReferenceAnalysisPackage (A : BibliographicAdmittedObject) where
  citationImpact : Prop
  coCitationGraph : Prop
  bibliographicCoupling : Prop
  researchFronts : Prop

def ReferenceAnalysisClosed (A : BibliographicAdmittedObject) (R : ReferenceAnalysisPackage A) : Prop :=
  R.citationImpact ∧ R.coCitationGraph ∧ R.bibliographicCoupling ∧ R.researchFronts

structure ReferenceAnalysisEvidence (A : BibliographicAdmittedObject) (R : ReferenceAnalysisPackage A) where
  citationImpactClosed : R.citationImpact
  coCitationGraphClosed : R.coCitationGraph
  bibliographicCouplingClosed : R.bibliographicCoupling
  researchFrontsClosed : R.researchFronts

theorem reference_analysis_closed_from_evidence (A : BibliographicAdmittedObject) (R : ReferenceAnalysisPackage A) (E : ReferenceAnalysisEvidence A R) : ReferenceAnalysisClosed A R := by
  exact And.intro E.citationImpactClosed (And.intro E.coCitationGraphClosed (And.intro E.bibliographicCouplingClosed E.researchFrontsClosed))

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse