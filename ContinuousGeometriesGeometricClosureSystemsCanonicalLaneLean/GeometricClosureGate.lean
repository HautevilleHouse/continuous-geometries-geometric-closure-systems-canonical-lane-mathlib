import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure GeometricClosureGate (A : AdmissibleClassProjective) where
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def gateClosed (A : AdmissibleClassProjective) (G : GeometricClosureGate A) : Prop :=
  G.endpointSatisfied ∨ G.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClassProjective) (G : GeometricClosureGate A) : gateClosed A G := by
  exact G.gateWitness

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse