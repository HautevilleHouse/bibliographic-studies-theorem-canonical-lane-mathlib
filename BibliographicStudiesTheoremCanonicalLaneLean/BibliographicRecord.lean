import canonicalLaneMathlib.AdmissibleClass
import BibliographicStudiesTheoremCanonicalLaneLean.BibliographicAdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure BibliographicRecordPackage (A : BibliographicAdmittedObject) where
  recordFields : Prop
  metadataSchema : Prop
  uniqueIdentifier : Prop
  crossReferences : Prop

def BibliographicRecordClosed (A : BibliographicAdmittedObject) (R : BibliographicRecordPackage A) : Prop :=
  R.recordFields ∧ R.metadataSchema ∧ R.uniqueIdentifier ∧ R.crossReferences

structure BibliographicRecordEvidence (A : BibliographicAdmittedObject) (R : BibliographicRecordPackage A) where
  recordFieldsClosed : R.recordFields
  metadataSchemaClosed : R.metadataSchema
  uniqueIdentifierClosed : R.uniqueIdentifier
  crossReferencesClosed : R.crossReferences

theorem bibliographic_record_closed_from_evidence (A : BibliographicAdmittedObject) (R : BibliographicRecordPackage A) (E : BibliographicRecordEvidence A R) : BibliographicRecordClosed A R := by
  exact And.intro E.recordFieldsClosed (And.intro E.metadataSchemaClosed (And.intro E.uniqueIdentifierClosed E.crossReferencesClosed))

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse