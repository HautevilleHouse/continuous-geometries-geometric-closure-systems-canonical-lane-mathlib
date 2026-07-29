import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure MeetContinuousLattice (α : Type u) [CompleteLattice α] where
  meetContinuous : ∀ (I : Set (Set α)), (⨅ S ∈ I, (⨅ a ∈ S, a)) = ⨅ S ∈ I, (⨅ a ∈ S, a)
  meetContinuousClosed : meetContinuous

theorem meet_continuous_lattice_closed (α : Type u) [CompleteLattice α] (L : MeetContinuousLattice α) :
    L.meetContinuous := L.meetContinuousClosed

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
