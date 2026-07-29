import ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure AdmissibleClass where
  object : ContinuousGeometryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContinuousGeometryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse