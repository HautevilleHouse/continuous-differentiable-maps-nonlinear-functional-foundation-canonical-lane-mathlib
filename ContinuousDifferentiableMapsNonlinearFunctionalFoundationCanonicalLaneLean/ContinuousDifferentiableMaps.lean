import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure ContinuousDifferentiableMapsPackage where
  sourceManifold : Type u
  targetManifold : Type v
  mapSpace : Type w
  differentiabilityClass : Nat
  nonlinearFunctional : Type x
  continuousStructure : Prop
  differentiableStructure : Prop
  nonlinearFunctionalWellDefined : Prop

structure ContinuousDifferentiableMapsEvidence (P : ContinuousDifferentiableMapsPackage) where
  continuousStructureClosed : P.continuousStructure
  differentiableStructureClosed : P.differentiableStructure
  nonlinearFunctionalWellDefinedClosed : P.nonlinearFunctionalWellDefined

def ContinuousDifferentiableMapsClosed (P : ContinuousDifferentiableMapsPackage) : Prop :=
  P.continuousStructure ∧ P.differentiableStructure ∧ P.nonlinearFunctionalWellDefined

theorem continuous_differentiable_maps_closed_from_evidence
    (P : ContinuousDifferentiableMapsPackage) (E : ContinuousDifferentiableMapsEvidence P) :
    ContinuousDifferentiableMapsClosed P := by
  exact And.intro E.continuousStructureClosed (And.intro E.differentiableStructureClosed E.nonlinearFunctionalWellDefinedClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse