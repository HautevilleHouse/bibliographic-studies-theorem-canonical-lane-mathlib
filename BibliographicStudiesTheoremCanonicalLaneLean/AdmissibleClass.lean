import BibliographicStudiesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BibliographicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BibliographicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse
