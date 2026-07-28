import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibliographicStudiesTheoremCanonicalLaneLean.CoCitationAnalysis
import HautevilleHouse.BibliographicStudiesTheoremCanonicalLaneLean.CitationGraph
import HautevilleHouse.BibliographicStudiesTheoremCanonicalLaneLean.BibliographicCoupling

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

def ConstrainedBibliographicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bibliographic_endgame (A : AdmissibleClass) :
    ConstrainedBibliographicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse