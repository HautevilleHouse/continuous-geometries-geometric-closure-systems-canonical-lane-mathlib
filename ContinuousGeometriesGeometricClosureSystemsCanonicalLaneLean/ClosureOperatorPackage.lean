import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.ContinuousGeometryStructure

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ClosureOperator (G : ContinuousGeometry) where
  closure : G.carrier → G.carrier
  extensive : ∀ x : G.carrier, G.lattice x (closure x) = closure x
  idempotent : ∀ x : G.carrier, closure (closure x) = closure x
  isotone : ∀ x y : G.carrier, G.lattice x y = x → G.lattice (closure x) (closure y) = closure x
  extensiveTerm : extensive
  idempotentTerm : idempotent
  isotoneTerm : isotone

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse