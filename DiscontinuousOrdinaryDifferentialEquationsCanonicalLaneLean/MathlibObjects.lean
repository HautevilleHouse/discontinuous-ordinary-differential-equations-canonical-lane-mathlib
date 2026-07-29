import DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DODESpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DODEAdmittedObject where
  space : DODESpace
  systemDefined : Prop
  solutionExists : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionConstructed : Prop
  conclusion : solutionConstructed

structure DODEEndgameState where
  object : DODEAdmittedObject

def DODEWitnessClosed (O : DODEAdmittedObject) : Prop :=
  O.solutionConstructed

end DiscontinuousOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
