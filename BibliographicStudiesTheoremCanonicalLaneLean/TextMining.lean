import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure TextMiningPackage where
  abstract : String
  keywords : List String
  fullText : String

def TextMiningClosed (T : TextMiningPackage) : Prop :=
  T.abstract ≠ "" ∧ T.keywords ≠ []

structure TextMiningEvidence (T : TextMiningPackage) where
  abstractNonempty : T.abstract ≠ ""
  keywordsNonempty : T.keywords ≠ []

theorem text_mining_closed_from_evidence (T : TextMiningPackage) (E : TextMiningEvidence T) : TextMiningClosed T := by
  exact And.intro E.abstractNonempty E.keywordsNonempty

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse