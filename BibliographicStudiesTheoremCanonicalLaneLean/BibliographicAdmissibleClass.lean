import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure BibliographicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BibliographicAdmittedObject where
  space : BibliographicSpace
  finiteRecordSet : Prop
  citationStructure : Prop
  referenceModel : Type
  referenceTopology : TopologicalSpace referenceModel
  isomorphicToReference : Prop
  conclusion : isomorphicToReference

structure BibliographicEndgameState where
  object : BibliographicAdmittedObject

def BibliographicWitnessClosed (O : BibliographicAdmittedObject) : Prop :=
  O.isomorphicToReference

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse