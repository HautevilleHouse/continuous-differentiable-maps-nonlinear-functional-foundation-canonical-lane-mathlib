import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure ChainRuleStructurePackage where
  middleSpace : Type u
  targetSpace : Type v
  sourceSpace : Type w
  differentiabilityClass : Prop
  compositionMap : (sourceSpace → middleSpace) → (middleSpace → targetSpace) → (sourceSpace → targetSpace)
  derivativeCompositionFormula : Prop
  frechetDerivativeChainRule : Prop
  gateauxDerivativeChainRule : Prop
  hadamardDerivativeChainRule : Prop

structure ChainRuleStructureEvidence (C : ChainRuleStructurePackage) where
  derivativeCompositionFormulaClosed : C.derivativeCompositionFormula
  frechetDerivativeChainRuleClosed : C.frechetDerivativeChainRule
  gateauxDerivativeChainRuleClosed : C.gateauxDerivativeChainRule
  hadamardDerivativeChainRuleClosed : C.hadamardDerivativeChainRule

def ChainRuleStructureClosed (C : ChainRuleStructurePackage) : Prop :=
  C.derivativeCompositionFormula ∧ C.frechetDerivativeChainRule ∧ C.gateauxDerivativeChainRule ∧ C.hadamardDerivativeChainRule

theorem chain_rule_structure_closed_from_evidence
    (C : ChainRuleStructurePackage) (E : ChainRuleStructureEvidence C) :
    ChainRuleStructureClosed C := by
  exact And.intro E.derivativeCompositionFormulaClosed (And.intro E.frechetDerivativeChainRuleClosed (And.intro E.gateauxDerivativeChainRuleClosed E.hadamardDerivativeChainRuleClosed))

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse