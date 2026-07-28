import BibliographicStudiesTheoremCanonicalLaneLean.BibliographicGeometrization

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure CitationEndpointClassificationPackage {C : CitationNetworkPackage}
    {Q : CitationClusteringPackage C} {P : CanonicalBibliographicContextPackage Q}
    {Z : BibliographicGeometrizationPackage P} where
  targetCitation : Type u
  citationNetwork : CitationNetworkPackage
  citationStatementMatches : Prop
  citationEndpoint : CitationStatement
  endpointMatchesBibliographicStatement : Prop

structure CitationEndpointClassificationEvidence
    {C : CitationNetworkPackage} {Q : CitationClusteringPackage C}
    {P : CanonicalBibliographicContextPackage Q} {Z : BibliographicGeometrizationPackage P}
    (Epkg : CitationEndpointClassificationPackage Z) where
  citationStatementMatchesClosed : Epkg.citationStatementMatches
  endpointMatchesBibliographicStatementClosed : Epkg.endpointMatchesBibliographicStatement

def CitationEndpointClassificationClosed
    {C : CitationNetworkPackage} {Q : CitationClusteringPackage C}
    {P : CanonicalBibliographicContextPackage Q} {Z : BibliographicGeometrizationPackage P}
    (Epkg : CitationEndpointClassificationPackage Z) : Prop :=
  Epkg.citationStatementMatches ∧ Epkg.endpointMatchesBibliographicStatement

theorem citation_endpoint_classification_closed_from_evidence
    {C : CitationNetworkPackage} {Q : CitationClusteringPackage C}
    {P : CanonicalBibliographicContextPackage Q} {Z : BibliographicGeometrizationPackage P}
    (Epkg : CitationEndpointClassificationPackage Z) (E : CitationEndpointClassificationEvidence Epkg) :
    CitationEndpointClassificationClosed Epkg := by
  exact And.intro E.citationStatementMatchesClosed E.endpointMatchesBibliographicStatementClosed

theorem citation_endpoint_classification_supplies_statement
    {C : CitationNetworkPackage} {Q : CitationClusteringPackage C}
    {P : CanonicalBibliographicContextPackage Q} {Z : BibliographicGeometrizationPackage P}
    (Epkg : CitationEndpointClassificationPackage Z) :
    Epkg.citationEndpoint := by
  exact Epkg.citationEndpoint

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse