import ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuousWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse