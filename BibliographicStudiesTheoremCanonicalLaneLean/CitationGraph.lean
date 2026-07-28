import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure CitationGraphPackage where
  nodeSet : Type u
  edgeRelation : nodeSet → nodeSet → Prop
  citationWeights : nodeSet → nodeSet → ℝ
  directedAcyclic : Prop
  weightedEdges : Prop

structure CitationGraphEvidence (G : CitationGraphPackage) where
  directedAcyclicClosed : G.directedAcyclic
  weightedEdgesClosed : G.weightedEdges

def CitationGraphClosed (G : CitationGraphPackage) : Prop :=
  G.directedAcyclic ∧ G.weightedEdges

theorem citation_graph_closed_from_evidence (G : CitationGraphPackage) (E : CitationGraphEvidence G) :
    CitationGraphClosed G := by
  exact And.intro E.directedAcyclicClosed E.weightedEdgesClosed

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse