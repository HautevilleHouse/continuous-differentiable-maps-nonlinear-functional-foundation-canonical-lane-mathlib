import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure NonlinearFunctionalCalculusPackage where
  functionalCalculusDomain : Type u
  functionalCalculusTarget : Type v
  differentialOperator : Type w
  integralOperator : Type x
  compositionOperator : Type y
  linearizationDefined : Prop
  taylorExpansionHolds : Prop
  implicitFunctionTheorem : Prop

structure NonlinearFunctionalCalculusEvidence (N : NonlinearFunctionalCalculusPackage) where
  linearizationDefinedClosed : N.linearizationDefined
  taylorExpansionHoldsClosed : N.taylorExpansionHolds
  implicitFunctionTheoremClosed : N.implicitFunctionTheorem

def NonlinearFunctionalCalculusClosed (N : NonlinearFunctionalCalculusPackage) : Prop :=
  N.linearizationDefined ∧ N.taylorExpansionHolds ∧ N.implicitFunctionTheorem

theorem nonlinear_functional_calculus_closed_from_evidence
    (N : NonlinearFunctionalCalculusPackage) (E : NonlinearFunctionalCalculusEvidence N) :
    NonlinearFunctionalCalculusClosed N := by
  exact And.intro E.linearizationDefinedClosed (And.intro E.taylorExpansionHoldsClosed E.implicitFunctionTheoremClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse