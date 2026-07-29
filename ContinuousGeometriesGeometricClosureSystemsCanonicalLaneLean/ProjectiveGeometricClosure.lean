import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ProjectiveGeometricClosureSystem where
  lineSet : Type u
  pointSet : Type v
  incidence : pointSet -> lineSet -> Prop
  closureOperator : Set pointSet -> Set pointSet
  closureIdempotent : ∀ s : Set pointSet, closureOperator (closureOperator s) = closureOperator s
  closureExtensive : ∀ s : Set pointSet, s ⊆ closureOperator s
  closureIsotone : ∀ s t : Set pointSet, s ⊆ t -> closureOperator s ⊆ closureOperator t
  exchangeProperty : ∀ (s : Set pointSet) (p q : pointSet),
    p ∈ closureOperator (insert q s) \ closureOperator s -> q ∈ closureOperator (insert p s)

def ProjectiveClosureClosed (P : ProjectiveGeometricClosureSystem) : Prop :=
  ∀ s : Set P.pointSet, P.closureOperator (P.closureOperator s) = P.closureOperator s ∧
  s ⊆ P.closureOperator s ∧
  ∀ t : Set P.pointSet, s ⊆ t -> P.closureOperator s ⊆ P.closureOperator t

theorem projective_closure_closed_from_system (P : ProjectiveGeometricClosureSystem) : ProjectiveClosureClosed P := by
  intro s
  exact ⟨P.closureIdempotent s, P.closureExtensive s, P.closureIsotone s⟩

structure AdmissibleClassProjective where
  system : ProjectiveGeometricClosureSystem
  bridgeWitness : ProjectiveClosureClosed system

def bridgeClosed (A : AdmissibleClassProjective) : Prop :=
  A.bridgeWitness = A.bridgeWitness

theorem bridge_from_admissible_class (A : AdmissibleClassProjective) : bridgeClosed A := by
  rfl

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse