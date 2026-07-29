import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure NonlinearFunctionalStructure where
  domain : Type u
  codomain : Type v
  spaceOfMaps : Type w
  topology : TopologicalSpace spaceOfMaps
  differentiableStructure : Prop
  continuousStructure : Prop
  functionalDefined : Prop
  nonlinearOperator : spaceOfMaps → spaceOfMaps

structure NonlinearFunctionalEvidence (S : NonlinearFunctionalStructure) where
  differentiableStructureClosed : S.differentiableStructure
  continuousStructureClosed : S.continuousStructure
  functionalDefinedClosed : S.functionalDefined
  linearizationComputed : Prop
  linearizationComputedClosed : linearizationComputed

def NonlinearFunctionalClosed (S : NonlinearFunctionalStructure) : Prop :=
  S.differentiableStructure ∧ S.continuousStructure ∧ S.functionalDefined

theorem nonlinear_functional_closed_from_evidence
    (S : NonlinearFunctionalStructure) (E : NonlinearFunctionalEvidence S) :
    NonlinearFunctionalClosed S := by
  exact And.intro E.differentiableStructureClosed
    (And.intro E.continuousStructureClosed E.functionalDefinedClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse