import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure GeometricClosureSystem (G : ContinuousGeometry) where
  exchangeProperty : ExchangeProperty G
  meetContinuousLattice : MeetContinuousLattice (G.carrier → Prop)
  subalgebraClosure : (G.carrier → Prop) → (G.carrier → Prop)
  subalgebraClosed : Prop

def GeometricClosureSystemClosed (G : ContinuousGeometry) (S : GeometricClosureSystem G) : Prop :=
  ContinuousGeometryClosed G ∧
  S.subalgebraClosed ∧
  S.exchangeProperty.exchangeClosed ∧
  S.meetContinuousLattice.meetContinuousClosed

theorem geometric_closure_system_closed_from_evidence (G : ContinuousGeometry) (S : GeometricClosureSystem G)
    (GCl : ContinuousGeometryEvidence G) (SSub : S.subalgebraClosed) (Exch : S.exchangeProperty.exchangeClosed)
    (MCL : S.meetContinuousLattice.meetContinuousClosed) : GeometricClosureSystemClosed G S := by
  refine And.intro (continuous_geometry_closed_from_evidence G GCl) (And.intro SSub (And.intro Exch MCL))

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
