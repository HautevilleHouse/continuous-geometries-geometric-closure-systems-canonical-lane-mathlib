import ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuousGeometriesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuousGeometriesAdmittedObject where
  space : ContinuousGeometriesSpace
  geometricClosureSystem : Prop
  closureProperties : Prop
  model : Type
  modelTopology : TopologicalSpace model
  isomorphicToModel : Prop
  conclusion : isomorphicToModel

structure ContinuousGeometriesEndgameState where
  object : ContinuousGeometriesAdmittedObject

def ContinuousGeometriesWitnessClosed (O : ContinuousGeometriesAdmittedObject) : Prop :=
  O.isomorphicToModel

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse