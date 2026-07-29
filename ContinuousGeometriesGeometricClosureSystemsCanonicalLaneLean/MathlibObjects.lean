import ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuousGeometrySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuousGeometryAdmittedObject where
  space : ContinuousGeometrySpace
  closedUnderClosure : Prop
  finiteDimensional : Prop
  irreducibleDecomposition : Prop
  conclusion : closedUnderClosure ∧ finiteDimensional ∧ irreducibleDecomposition

structure ContinuousGeometryEndgameState where
  object : ContinuousGeometryAdmittedObject

def ContinuousGeometryWitnessClosed (O : ContinuousGeometryAdmittedObject) : Prop :=
  O.closedUnderClosure ∧ O.finiteDimensional ∧ O.irreducibleDecomposition

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse