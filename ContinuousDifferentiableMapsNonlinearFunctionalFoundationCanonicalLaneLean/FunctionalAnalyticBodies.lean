import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.NonlinearFunctionalStructure

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure UserEmbeddingOperator where
  sourceFunctional : NonlinearFunctionalStructure
  targetFunctional : NonlinearFunctionalStructure
  embeddingMap : sourceFunctional.spaceOfMaps → targetFunctional.spaceOfMaps
  injectivity : Prop
  continuity : Prop
  differentiability : Prop
  injectivityClosed : injectivity
  continuityClosed : continuity
  differentiabilityClosed : differentiability

def UserEmbeddingClosed (U : UserEmbeddingOperator) : Prop :=
  U.injectivity ∧ U.continuity ∧ U.differentiability

theorem user_embedding_closed_from_evidence (U : UserEmbeddingOperator) :
    UserEmbeddingClosed U := by
  exact And.intro U.injectivityClosed
    (And.intro U.continuityClosed U.differentiabilityClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse