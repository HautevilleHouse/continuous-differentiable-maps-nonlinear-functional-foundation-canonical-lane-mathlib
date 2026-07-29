import ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.DifferentiableMaps

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

structure NonlinearFunctionalFoundationPackage (A : AdmissibleClass) where
  nonlinearPackage : NonlinearFunctionalPackage A
  continuousPackage : ContinuousMapPackage nonlinearPackage
  differentiablePackage : DifferentiableMapPackage continuousPackage
  foundationClosed : Prop
  foundationClosedTerm : foundationClosed

def NonlinearFunctionalFoundationClosed (A : AdmissibleClass)
    (N : NonlinearFunctionalFoundationPackage A) : Prop :=
  N.foundationClosed

theorem nonlinear_functional_foundation_closed (A : AdmissibleClass)
    (N : NonlinearFunctionalFoundationPackage A) :
    NonlinearFunctionalFoundationClosed A N := by
  exact N.foundationClosedTerm

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse
