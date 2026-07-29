import ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.BridgeLemmas

/-!
# Nonlinear Functional Package
-/

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure NonlinearFunctionalPackage where
  domainManifold : Type u
  topology : TopologicalSpace domainManifold
  smoothStructure : Prop
  actionSmooth : Prop
  firstVariation : Prop
  criticalPointCondition : Prop

def nonlinearFunctionalClosed (N : NonlinearFunctionalPackage) : Prop :=
  N.smoothStructure ∧ N.actionSmooth ∧ N.firstVariation ∧ N.criticalPointCondition

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse