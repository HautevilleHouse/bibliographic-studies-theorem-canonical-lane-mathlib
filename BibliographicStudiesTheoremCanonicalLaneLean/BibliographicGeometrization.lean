import BibliographicStudiesTheoremCanonicalLaneLean.CanonicalBibliographicContext

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure BibliographicGeometrizationPackage {C : CitationNetworkPackage}
    {Q : CitationClusteringPackage C} {P : CanonicalBibliographicContextPackage Q} where
  citationSpaceDecomposition : Prop
  clusteringResult : Prop
  classification : Prop
  citationNetworkStructure : Prop

structure BibliographicGeometrizationEvidence {C : CitationNetworkPackage}
    {Q : CitationClusteringPackage C} {P : CanonicalBibliographicContextPackage Q}
    (Z : BibliographicGeometrizationPackage P) where
  citationSpaceDecompositionClosed : Z.citationSpaceDecomposition
  clusteringResultClosed : Z.clusteringResult
  classificationClosed : Z.classification
  citationNetworkStructureClosed : Z.citationNetworkStructure

def BibliographicGeometrizationClosed {C : CitationNetworkPackage}
    {Q : CitationClusteringPackage C} {P : CanonicalBibliographicContextPackage Q}
    (Z : BibliographicGeometrizationPackage P) : Prop :=
  Z.citationSpaceDecomposition ∧ Z.clusteringResult ∧
  Z.classification ∧ Z.citationNetworkStructure

theorem bibliographic_geometrization_closed_from_evidence
    {C : CitationNetworkPackage} {Q : CitationClusteringPackage C}
    {P : CanonicalBibliographicContextPackage Q} (Z : BibliographicGeometrizationPackage P)
    (E : BibliographicGeometrizationEvidence Z) : BibliographicGeometrizationClosed Z := by
  exact And.intro E.citationSpaceDecompositionClosed
    (And.intro E.clusteringResultClosed
      (And.intro E.classificationClosed E.citationNetworkStructureClosed))

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse