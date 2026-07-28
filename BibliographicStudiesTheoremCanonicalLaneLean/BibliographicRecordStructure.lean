import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure BibliographicRecordPackage where
  title : String
  authors : List String
  year : Nat
  journal : String
  doi : String

def BibliographicRecordClosed (R : BibliographicRecordPackage) : Prop :=
  R.title ≠ "" ∧ R.authors ≠ [] ∧ R.year > 0

structure BibliographicRecordEvidence (R : BibliographicRecordPackage) where
  titleNonempty : R.title ≠ ""
  authorsNonempty : R.authors ≠ []
  yearPositive : R.year > 0

theorem bibliographic_record_closed_from_evidence (R : BibliographicRecordPackage) (E : BibliographicRecordEvidence R) : BibliographicRecordClosed R := by
  exact And.intro E.titleNonempty (And.intro E.authorsNonempty E.yearPositive)

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse