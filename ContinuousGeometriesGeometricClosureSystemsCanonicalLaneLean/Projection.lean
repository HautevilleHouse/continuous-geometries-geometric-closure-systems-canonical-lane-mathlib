import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure Projection where
  carrier : Type u
  projectionOperator : (carrier → Prop) → (carrier → Prop)
  idempotent : ∀ x : carrier → Prop, projectionOperator (projectionOperator x) = projectionOperator x
  contractive : Prop

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
