import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.ContinuousGeometryStructure

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure SemilatticeRepresentation (G : ContinuousGeometry) where
  carrier : Type u
  meet : carrier → carrier → carrier
  join : carrier → carrier → carrier
  meetsIdempotent : ∀ x : carrier, meet x x = x
  joinsIdempotent : ∀ x : carrier, join x x = x
  meetsAssociative : ∀ x y z : carrier, meet (meet x y) z = meet x (meet y z)
  joinsAssociative : ∀ x y z : carrier, join (join x y) z = join x (join y z)
  absorption : ∀ x y : carrier, meet x (join x y) = x
  meetsIdempotentTerm : meetsIdempotent
  joinsIdempotentTerm : joinsIdempotent
  meetsAssociativeTerm : meetsAssociative
  joinsAssociativeTerm : joinsAssociative
  absorptionTerm : absorption

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse