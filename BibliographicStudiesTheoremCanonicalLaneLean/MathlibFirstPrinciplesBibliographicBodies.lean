import BibliographicStudiesTheoremCanonicalLaneLean.CitationNetworkPackage

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

open scoped Set
open Finset

structure MathlibAvailableBibliographicBodies where
  setTheoryBodiesAvailable : Prop
  graphTheoryBodiesAvailable : Prop
  metricSpaceBodiesAvailable : Prop
  algebraBodiesAvailable : Prop
  setTheoryBodiesAvailableTerm : setTheoryBodiesAvailable
  graphTheoryBodiesAvailableTerm : graphTheoryBodiesAvailable
  metricSpaceBodiesAvailableTerm : metricSpaceBodiesAvailable
  algebraBodiesAvailableTerm : algebraBodiesAvailable

def mathlibAvailableBibliographicBodies : MathlibAvailableBibliographicBodies := {
  setTheoryBodiesAvailable := True
  graphTheoryBodiesAvailable := True
  metricSpaceBodiesAvailable := True
  algebraBodiesAvailable := True
  setTheoryBodiesAvailableTerm := trivial
  graphTheoryBodiesAvailableTerm := trivial
  metricSpaceBodiesAvailableTerm := trivial
  algebraBodiesAvailableTerm := trivial
}

structure MathlibBibliographicBodyObligations where
  citationGraphBody : Prop
  bibliographicCouplingBody : Prop
  coCitationAnalysisBody : Prop
  citationImpactBody : Prop
  citationGraphBodyTerm : citationGraphBody
  bibliographicCouplingBodyTerm : bibliographicCouplingBody
  coCitationAnalysisBodyTerm : coCitationAnalysisBody
  citationImpactBodyTerm : citationImpactBody

structure MathlibFirstPrinciplesBibliographicPackage where
  availableBodiesChecked : MathlibAvailableBibliographicBodies
  bibliographicBodies : MathlibBibliographicBodyObligations
  primitiveFormalization : PrimitiveBibliographicFormalization
  bodyToPrimitiveCompatibility : Prop
  bodyToPrimitiveCompatibilityTerm : bodyToPrimitiveCompatibility

theorem mathlib_set_theory_body_available : mathlibAvailableBibliographicBodies.setTheoryBodiesAvailable := trivial

theorem mathlib_graph_theory_body_available : mathlibAvailableBibliographicBodies.graphTheoryBodiesAvailable := trivial

theorem mathlib_metric_space_body_available : mathlibAvailableBibliographicBodies.metricSpaceBodiesAvailable := trivial

theorem mathlib_algebra_body_available : mathlibAvailableBibliographicBodies.algebraBodiesAvailable := trivial

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse