import canonicalLaneMathlib.AdmissibleClass
import BibliographicStudiesTheoremCanonicalLaneLean.BibliographicAdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure CitationNetworkPackage (A : BibliographicAdmittedObject) where
  citationRelations : Prop
  directedGraph : Prop
  connectivityProperties : Prop
  influentialClusters : Prop
  clusterEvidence : connectivityProperties → influentialClusters

structure CitationNetworkEvidence (A : BibliographicAdmittedObject) (C : CitationNetworkPackage A) where
  citationRelationsClosed : C.citationRelations
  directedGraphClosed : C.directedGraph
  connectivityPropertiesClosed : C.connectivityProperties
  clusterEvidenceClosed : C.clusterEvidence C.connectivityPropertiesClosed

def CitationNetworkClosed (A : BibliographicAdmittedObject) (C : CitationNetworkPackage A) : Prop :=
  C.citationRelations ∧ C.directedGraph ∧ C.connectivityProperties ∧ C.influentialClusters

theorem citation_network_closed_from_evidence (A : BibliographicAdmittedObject) (C : CitationNetworkPackage A) (E : CitationNetworkEvidence A C) : CitationNetworkClosed A C := by
  exact And.intro E.citationRelationsClosed (And.intro E.directedGraphClosed (And.intro E.connectivityPropertiesClosed E.clusterEvidenceClosed))

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse