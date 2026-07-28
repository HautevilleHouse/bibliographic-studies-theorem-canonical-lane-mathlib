import BibliographicStudiesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure CitationGraphPackage (A : AdmissibleClass) where
  nodes : Type u
  edges : Type v
  adjacency : Prop
  centralityMeasures : Prop
  communityStructure : Prop

def CitationGraphClosed {A : AdmissibleClass} (P : CitationGraphPackage A) : Prop :=
  P.adjacency ∧ P.centralityMeasures ∧ P.communityStructure

structure CitationGraphEvidence {A : AdmissibleClass} (P : CitationGraphPackage A) where
  adjacencyClosed : P.adjacency
  centralityMeasuresClosed : P.centralityMeasures
  communityStructureClosed : P.communityStructure

theorem citation_graph_closed_from_evidence {A : AdmissibleClass}
    (P : CitationGraphPackage A) (E : CitationGraphEvidence P) : CitationGraphClosed P := by
  exact And.intro E.adjacencyClosed (And.intro E.centralityMeasuresClosed E.communityStructureClosed)

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse