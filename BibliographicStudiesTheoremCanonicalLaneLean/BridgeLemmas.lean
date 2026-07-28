import BibliographicStudiesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace BibliographicStudiesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BibliographicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BibliographicStudiesTheoremCanonicalLaneLean
end HautevilleHouse
