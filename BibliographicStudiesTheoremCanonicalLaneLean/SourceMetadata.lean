import BibliographicStudiesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure SourceMetadata where
  title : String
  authors : List String
  year : Nat
  journal : String
  doi : String
  consistent : Prop

structure SourceMetadataEvidence (M : SourceMetadata) where
  titleNonempty : M.title ≠ ""
  authorsNonempty : M.authors ≠ []
  yearValid : M.year ≥ 1900
  doiValid : M.doi ≠ ""
  consistentClosed : M.consistent

def SourceMetadataClosed (M : SourceMetadata) : Prop :=
  M.title ≠ "" ∧ M.authors ≠ [] ∧ M.year ≥ 1900 ∧ M.doi ≠ "" ∧ M.consistent

theorem source_metadata_closed_from_evidence
    (M : SourceMetadata) (E : SourceMetadataEvidence M) : SourceMetadataClosed M := by
  exact And.intro E.titleNonempty (And.intro E.authorsNonempty (And.intro E.yearValid (And.intro E.doiValid E.consistentClosed)))

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse
