import canonicalLaneMathlib.AdmissibleClass
import BibliographicStudiesTheoremCanonicalLaneLean.BibliographicRecordStructure
import BibliographicStudiesTheoremCanonicalLaneLean.CitationGraph
import BibliographicStudiesTheoremCanonicalLaneLean.BibliometricIndicators
import BibliographicStudiesTheoremCanonicalLaneLean.TextMining

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

structure AdmissibleClass where
  record : BibliographicRecordPackage
  citationGraph : CitationGraphPackage
  indicators : BibliometricIndicatorsPackage
  textMining : TextMiningPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BibliographicRecordClosed A.record ∧ CitationGraphClosed A.citationGraph ∧
  BibliometricIndicatorsClosed A.indicators ∧ TextMiningClosed A.textMining ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse