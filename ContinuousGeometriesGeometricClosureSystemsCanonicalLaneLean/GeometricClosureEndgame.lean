import canonicalLaneMathlib.AdmissibleClass
import GeometricClosureGate

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

def ConstrainedGeometricClosure (A : AdmissibleClassProjective) (G : GeometricClosureGate A) : Prop :=
  bridgeClosed A ∧ gateClosed A G

theorem constrained_geometric_closure_endgame (A : AdmissibleClassProjective) (G : GeometricClosureGate A) :
    ConstrainedGeometricClosure A G := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A G)

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse