import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

def ConstrainedContinuousGeometryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_geometry_endgame (A : AdmissibleClass) :
    ConstrainedContinuousGeometryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse