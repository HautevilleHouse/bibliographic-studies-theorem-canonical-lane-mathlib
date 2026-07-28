import BibliographicStudiesTheoremCanonicalLaneLean.CitationGraph

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure ClassificationSchemePackage {A : AdmissibleClass}
    (C : CitationGraphPackage A) where
  subjectCategories : Type u
  hierarchyDepth : Prop
  overlapMeasure : Prop
  coverageCompleteness : Prop

def ClassificationSchemeClosed {A : AdmissibleClass}
    {C : CitationGraphPackage A} (S : ClassificationSchemePackage C) : Prop :=
  S.hierarchyDepth ∧ S.overlapMeasure ∧ S.coverageCompleteness

structure ClassificationSchemeEvidence {A : AdmissibleClass}
    {C : CitationGraphPackage A} (S : ClassificationSchemePackage C) where
  hierarchyDepthClosed : S.hierarchyDepth
  overlapMeasureClosed : S.overlapMeasure
  coverageCompletenessClosed : S.coverageCompleteness

theorem classification_scheme_closed_from_evidence {A : AdmissibleClass}
    {C : CitationGraphPackage A} (S : ClassificationSchemePackage C)
    (E : ClassificationSchemeEvidence S) : ClassificationSchemeClosed S := by
  exact And.intro E.hierarchyDepthClosed (And.intro E.overlapMeasureClosed E.coverageCompletenessClosed)

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse