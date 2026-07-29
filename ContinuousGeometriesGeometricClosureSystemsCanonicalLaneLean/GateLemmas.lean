import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.AdmissibleClassBridge

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse