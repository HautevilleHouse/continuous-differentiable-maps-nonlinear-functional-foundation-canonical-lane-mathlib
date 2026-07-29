import ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuousManifold where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuousAdmittedObject where
  space : ContinuousManifold
  differentiableStructure : Prop
  mappingContinuous : Prop
  functionalWellDefined : Prop
  criticalPointIdentified : Prop
  conclusion : criticalPointIdentified

structure ContinuousEndgameState where
  object : ContinuousAdmittedObject

def ContinuousWitnessClosed (O : ContinuousAdmittedObject) : Prop :=
  O.criticalPointIdentified

end ContinuousDifferentiableMapsNonlinearFunctionalFoundationCanonicalLaneLean
end HautevilleHouse