import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.FunctionalAnalyticBodies

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure NonlinearFunctionalAnalyticCertificate
    (S : NonlinearFunctionalStructure) where
  chainRuleSatisfied : Prop
  implicitFunctionAvailable : Prop
  inverseFunctionAvailable : Prop
  linearizationBounded : Prop
  chainRuleSatisfiedClosed : chainRuleSatisfied
  implicitFunctionAvailableClosed : implicitFunctionAvailable
  inverseFunctionAvailableClosed : inverseFunctionAvailable
  linearizationBoundedClosed : linearizationBounded
  analyticEvidence : NonlinearFunctionalEvidence S

def NonlinearFunctionalAnalyticCertificateClosed
    (S : NonlinearFunctionalStructure) (C : NonlinearFunctionalAnalyticCertificate S) : Prop :=
  C.chainRuleSatisfied ∧ C.implicitFunctionAvailable ∧
  C.inverseFunctionAvailable ∧ C.linearizationBounded ∧
  NonlinearFunctionalClosed S

theorem nonlinear_functional_analytic_certificate_closed
    (S : NonlinearFunctionalStructure) (C : NonlinearFunctionalAnalyticCertificate S) :
    NonlinearFunctionalAnalyticCertificateClosed S C := by
  exact And.intro C.chainRuleSatisfiedClosed
    (And.intro C.implicitFunctionAvailableClosed
      (And.intro C.inverseFunctionAvailableClosed
        (And.intro C.linearizationBoundedClosed
          (nonlinear_functional_closed_from_evidence S C.analyticEvidence))))

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse