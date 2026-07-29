import ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuousEndgameState where
  object : AdmittedObject

def continuousProjection : Projection ContinuousEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem continuous_projection_idempotent (x : ContinuousEndgameState) :
    continuousProjection.toFun (continuousProjection.toFun x) = continuousProjection.toFun x := by
  exact continuousProjection.idempotent x

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse