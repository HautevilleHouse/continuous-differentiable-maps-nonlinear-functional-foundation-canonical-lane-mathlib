import ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.NonlinearFunctionalPackage

/-!
# Continuous Mapping Object Package
-/

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure ContinuousMappingObject where
  sourceManifold : Type u
  targetManifold : Type v
  topologySource : TopologicalSpace sourceManifold
  topologyTarget : TopologicalSpace targetManifold
  mappingContinuous : Prop
  differentiableClass : Prop
  functionalValue : ℝ
  criticalPoint : Prop

def continuousMappingClosed (M : ContinuousMappingObject) : Prop :=
  M.mappingContinuous ∧ M.differentiableClass ∧ M.criticalPoint

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse