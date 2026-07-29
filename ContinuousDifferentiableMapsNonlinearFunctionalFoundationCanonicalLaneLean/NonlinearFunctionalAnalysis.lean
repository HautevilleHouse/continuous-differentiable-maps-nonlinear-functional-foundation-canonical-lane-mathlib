import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure NonlinearFunctionalAnalysisPackage where
  functionSpace : Type u
  domain : Type v
  codomain : Type w
  nonlinearOperator : Type x
  differentiabilityType : String
  operatorContinuity : Prop
  operatorDifferentiability : Prop
  chainRuleCompatibility : Prop

structure NonlinearFunctionalAnalysisEvidence (N : NonlinearFunctionalAnalysisPackage) where
  operatorContinuityClosed : N.operatorContinuity
  operatorDifferentiabilityClosed : N.operatorDifferentiability
  chainRuleCompatibilityClosed : N.chainRuleCompatibility

def NonlinearFunctionalAnalysisClosed (N : NonlinearFunctionalAnalysisPackage) : Prop :=
  N.operatorContinuity ∧ N.operatorDifferentiability ∧ N.chainRuleCompatibility

theorem nonlinear_functional_analysis_closed_from_evidence
    (N : NonlinearFunctionalAnalysisPackage) (E : NonlinearFunctionalAnalysisEvidence N) :
    NonlinearFunctionalAnalysisClosed N := by
  exact And.intro E.operatorContinuityClosed (And.intro E.operatorDifferentiabilityClosed E.chainRuleCompatibilityClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse