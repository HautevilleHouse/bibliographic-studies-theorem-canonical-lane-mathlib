import BibliographicStudiesTheoremCanonicalLaneLean.SourceMetadata

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure BibliographicSource where
  identifier : String
  metadata : SourceMetadata
  citedBy : List BibliographicSource
  citations : List BibliographicSource

structure BibliographicEvidence (S : BibliographicSource) where
  metadataConsistent : S.metadata.consistent
  citationClosure : Prop
  referenceClosure : Prop

def BibliographicWitnessClosed (S : BibliographicSource) : Prop :=
  S.metadata.consistent ∧ S.citedBy ≠ [] ∨ S.citations ≠ []

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse
