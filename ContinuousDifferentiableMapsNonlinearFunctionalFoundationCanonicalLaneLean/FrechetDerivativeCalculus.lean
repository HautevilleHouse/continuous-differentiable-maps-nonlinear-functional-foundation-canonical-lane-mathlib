import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure FrechetDerivativeCalculusPackage where
  domain : Type u
  codomain : Type v
  normedSpaceDomain : NormedAddCommGroup domain
  normedSpaceCodomain : NormedAddCommGroup codomain
  derivativeMap : (domain → codomain) → (domain → (domain →L[ℝ] codomain))
  boundedLinearMap : Prop
  productRuleHolds : Prop
  chainRuleHolds : Prop
  inverseFunctionTheorem : Prop

structure FrechetDerivativeCalculusEvidence (F : FrechetDerivativeCalculusPackage) where
  boundedLinearMapClosed : F.boundedLinearMap
  productRuleHoldsClosed : F.productRuleHolds
  chainRuleHoldsClosed : F.chainRuleHolds
  inverseFunctionTheoremClosed : F.inverseFunctionTheorem

def FrechetDerivativeCalculusClosed (F : FrechetDerivativeCalculusPackage) : Prop :=
  F.boundedLinearMap ∧ F.productRuleHolds ∧ F.chainRuleHolds ∧ F.inverseFunctionTheorem

theorem frechet_derivative_calculus_closed_from_evidence
    (F : FrechetDerivativeCalculusPackage) (E : FrechetDerivativeCalculusEvidence F) :
    FrechetDerivativeCalculusClosed F := by
  exact And.intro E.boundedLinearMapClosed (And.intro E.productRuleHoldsClosed (And.intro E.chainRuleHoldsClosed E.inverseFunctionTheoremClosed))

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse