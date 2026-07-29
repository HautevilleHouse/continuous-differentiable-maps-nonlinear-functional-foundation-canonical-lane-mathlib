import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure FunctionalDerivativePackage where
  functionalSpace : Type u
  derivativeType : Type v
  gateauxDerivative : Type w
  frechetDerivative : Type x
  linearApproximation : Prop
  derivativeUnique : Prop
  continuityImpliesGateaux : Prop

structure FunctionalDerivativeEvidence (F : FunctionalDerivativePackage) where
  linearApproximationClosed : F.linearApproximation
  derivativeUniqueClosed : F.derivativeUnique
  continuityImpliesGateauxClosed : F.continuityImpliesGateaux

def FunctionalDerivativeClosed (F : FunctionalDerivativePackage) : Prop :=
  F.linearApproximation ∧ F.derivativeUnique ∧ F.continuityImpliesGateaux

theorem functional_derivative_closed_from_evidence
    (F : FunctionalDerivativePackage) (E : FunctionalDerivativeEvidence F) :
    FunctionalDerivativeClosed F := by
  exact And.intro E.linearApproximationClosed (And.intro E.derivativeUniqueClosed E.continuityImpliesGateauxClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse