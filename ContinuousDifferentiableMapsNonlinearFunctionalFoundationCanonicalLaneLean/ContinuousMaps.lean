import ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.NonlinearFunctionalAnalysis

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure ContinuousMapPackage {A : AdmissibleClass} (N : NonlinearFunctionalPackage A) where
  domain : Type u
  codomain : Type v
  map : domain → codomain
  continuity : Prop
  uniformContinuity : Prop

structure ContinuousMapEvidence {A : AdmissibleClass} {N : NonlinearFunctionalPackage A}
    (C : ContinuousMapPackage N) where
  continuityClosed : C.continuity
  uniformContinuityClosed : C.uniformContinuity

def ContinuousMapClosed {A : AdmissibleClass} {N : NonlinearFunctionalPackage A}
    (C : ContinuousMapPackage N) : Prop :=
  C.continuity ∧ C.uniformContinuity

theorem continuous_map_closed_from_evidence
    {A : AdmissibleClass} {N : NonlinearFunctionalPackage A}
    (C : ContinuousMapPackage N) (E : ContinuousMapEvidence C) :
    ContinuousMapClosed C := by
  exact And.intro E.continuityClosed E.uniformContinuityClosed

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse
