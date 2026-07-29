import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.ContinuousDifferentiableMapsFoundation

/-!
# Inverse Function Theorem Package

This module formalizes the inverse function theorem for continuously differentiable
maps between Banach spaces, a cornerstone of nonlinear functional analysis.
-/

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure InverseFunctionTheoremPackage
    {F : ContinuousDifferentiableMapsFoundationPackage} where
  derivativeAtPoint : Property
  derivativeInvertible : Property
  localDiffeomorphism : Property
  inverseMapDifferentiable : Property
  inverseDerivativeFormula : Property

structure InverseFunctionTheoremEvidence
    {F : ContinuousDifferentiableMapsFoundationPackage}
    (I : InverseFunctionTheoremPackage F) where
  derivativeAtPointClosed : I.derivativeAtPoint
  derivativeInvertibleClosed : I.derivativeInvertible
  localDiffeomorphismClosed : I.localDiffeomorphism
  inverseMapDifferentiableClosed : I.inverseMapDifferentiable
  inverseDerivativeFormulaClosed : I.inverseDerivativeFormula

def InverseFunctionTheoremClosed
    {F : ContinuousDifferentiableMapsFoundationPackage}
    (I : InverseFunctionTheoremPackage F) : Prop :=
  I.derivativeAtPoint ∧ I.derivativeInvertible ∧ I.localDiffeomorphism ∧
  I.inverseMapDifferentiable ∧ I.inverseDerivativeFormula

theorem inverse_function_theorem_closed_from_evidence
    {F : ContinuousDifferentiableMapsFoundationPackage}
    (I : InverseFunctionTheoremPackage F)
    (E : InverseFunctionTheoremEvidence I) : InverseFunctionTheoremClosed I := by
  exact And.intro E.derivativeAtPointClosed
    (And.intro E.derivativeInvertibleClosed
      (And.intro E.localDiffeomorphismClosed
        (And.intro E.inverseMapDifferentiableClosed
          E.inverseDerivativeFormulaClosed)))

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse