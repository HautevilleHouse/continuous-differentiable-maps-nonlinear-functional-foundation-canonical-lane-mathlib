import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.NonlinearFunctionalAnalyticProof

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure NonlinearFunctionalRouteObligations where
  nonlinearFunctionalStructure : NonlinearFunctionalStructure
  analyticCertificate : NonlinearFunctionalAnalyticCertificate nonlinearFunctionalStructure
  userEmbedding : UserEmbeddingOperator
  embeddingInjective : UserEmbeddingClosed userEmbedding

def NonlinearFunctionalRouteClosed (R : NonlinearFunctionalRouteObligations) : Prop :=
  NonlinearFunctionalAnalyticCertificateClosed R.nonlinearFunctionalStructure R.analyticCertificate ∧
  R.embeddingInjective

theorem nonlinear_functional_route_closed_from_evidence
    (R : NonlinearFunctionalRouteObligations) :
    NonlinearFunctionalRouteClosed R := by
  exact And.intro
    (nonlinear_functional_analytic_certificate_closed
      R.nonlinearFunctionalStructure R.analyticCertificate)
    R.embeddingInjective

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse