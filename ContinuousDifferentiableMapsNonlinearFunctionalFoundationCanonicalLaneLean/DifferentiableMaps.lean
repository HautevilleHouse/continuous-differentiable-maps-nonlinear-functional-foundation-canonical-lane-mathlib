import ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.ContinuousMaps

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure DifferentiableMapPackage {A : AdmissibleClass} {N : NonlinearFunctionalPackage A}
    (C : ContinuousMapPackage N) where
  derivative : C.domain → (C.domain → C.codomain)
  frechetDifferentiability : Prop
  chainRule : Prop

structure DifferentiableMapEvidence {A : AdmissibleClass} {N : NonlinearFunctionalPackage A}
    {C : ContinuousMapPackage N} (D : DifferentiableMapPackage C) where
  frechetDifferentiabilityClosed : D.frechetDifferentiability
  chainRuleClosed : D.chainRule

def DifferentiableMapClosed {A : AdmissibleClass} {N : NonlinearFunctionalPackage A}
    {C : ContinuousMapPackage N} (D : DifferentiableMapPackage C) : Prop :=
  D.frechetDifferentiability ∧ D.chainRule

theorem differentiable_map_closed_from_evidence
    {A : AdmissibleClass} {N : NonlinearFunctionalPackage A}
    {C : ContinuousMapPackage N} (D : DifferentiableMapPackage C) (E : DifferentiableMapEvidence D) :
    DifferentiableMapClosed D := by
  exact And.intro E.frechetDifferentiabilityClosed E.chainRuleClosed

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse
