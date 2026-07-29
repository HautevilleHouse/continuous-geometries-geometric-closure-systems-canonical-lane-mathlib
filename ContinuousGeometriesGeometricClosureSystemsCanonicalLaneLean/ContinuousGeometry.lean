import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ContinuousGeometry where
  carrier : Type u
  closureOperator : (carrier → Prop) → (carrier → Prop)
  isClosed : (carrier → Prop) → Prop
  closureMonotone : Prop
  closureIdempotent : Prop
  closureExtensive : Prop

structure ContinuousGeometryEvidence (G : ContinuousGeometry) where
  closureMonotoneClosed : G.closureMonotone
  closureIdempotentClosed : G.closureIdempotent
  closureExtensiveClosed : G.closureExtensive

def ContinuousGeometryClosed (G : ContinuousGeometry) : Prop :=
  G.closureMonotone ∧ G.closureIdempotent ∧ G.closureExtensive

theorem continuous_geometry_closed_from_evidence (G : ContinuousGeometry) (E : ContinuousGeometryEvidence G) :
    ContinuousGeometryClosed G := by
  exact And.intro E.closureMonotoneClosed (And.intro E.closureIdempotentClosed E.closureExtensiveClosed)

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
