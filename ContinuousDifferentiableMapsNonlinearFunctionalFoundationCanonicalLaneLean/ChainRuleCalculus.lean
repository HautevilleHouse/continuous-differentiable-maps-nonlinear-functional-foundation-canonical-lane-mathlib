import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure ChainRuleCalculusPackage where
  mapOne : Type u
  mapTwo : Type v
  compositionMap : Type w
  derivativeOne : Type x
  derivativeTwo : Type y
  derivativeComposition : Type z
  chainRuleHolds : Prop
  derivativeBounded : Prop
  compositionDifferentiable : Prop

structure ChainRuleCalculusEvidence (C : ChainRuleCalculusPackage) where
  chainRuleHoldsClosed : C.chainRuleHolds
  derivativeBoundedClosed : C.derivativeBounded
  compositionDifferentiableClosed : C.compositionDifferentiable

def ChainRuleCalculusClosed (C : ChainRuleCalculusPackage) : Prop :=
  C.chainRuleHolds ∧ C.derivativeBounded ∧ C.compositionDifferentiable

theorem chain_rule_calculus_closed_from_evidence
    (C : ChainRuleCalculusPackage) (E : ChainRuleCalculusEvidence C) :
    ChainRuleCalculusClosed C := by
  exact And.intro E.chainRuleHoldsClosed (And.intro E.derivativeBoundedClosed E.compositionDifferentiableClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse