import BibliographicStudiesTheoremCanonicalLaneLean.CitationNetworkPackage

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure CanonicalBibliographicContextPackage {C : CitationNetworkPackage}
    (Q : CitationClusteringPackage C) where
  highCitationRegionCovered : Prop
  couplingDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderCitationFlow : Prop

structure CanonicalBibliographicContextEvidence {C : CitationNetworkPackage}
    {Q : CitationClusteringPackage C} (P : CanonicalBibliographicContextPackage Q) where
  highCitationRegionCoveredClosed : P.highCitationRegionCovered
  couplingDecompositionClosed : P.couplingDecomposition
  scaleCompatibilityClosed : P.scaleCompatibility
  persistenceUnderCitationFlowClosed : P.persistenceUnderCitationFlow

def CanonicalBibliographicContextClosed {C : CitationNetworkPackage}
    {Q : CitationClusteringPackage C} (P : CanonicalBibliographicContextPackage Q) : Prop :=
  P.highCitationRegionCovered ∧ P.couplingDecomposition ∧
  P.scaleCompatibility ∧ P.persistenceUnderCitationFlow

theorem canonical_bibliographic_context_closed_from_evidence
    {C : CitationNetworkPackage} {Q : CitationClusteringPackage C}
    (P : CanonicalBibliographicContextPackage Q) (E : CanonicalBibliographicContextEvidence P) :
    CanonicalBibliographicContextClosed P := by
  exact And.intro E.highCitationRegionCoveredClosed
    (And.intro E.couplingDecompositionClosed
      (And.intro E.scaleCompatibilityClosed E.persistenceUnderCitationFlowClosed))

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse