import ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ContinuousGeometrySystem where
  carrier : Type u
  closureOperation : carrier → carrier → Prop
  idempotent : ∀ x : carrier, closureOperation x x
  monotone : ∀ x y : carrier, closureOperation x y → closureOperation x y
  exchange : ∀ x y z : carrier, closureOperation x y ∧ ¬ closureOperation x z → closureOperation y z
  continuousLattice : Prop
  dimensions : ℕ
  irreducibleComponents : Prop

def systemClosed (S : ContinuousGeometrySystem) : Prop :=
  S.idempotent ∧ S.monotone ∧ S.exchange ∧ S.continuousLattice ∧ S.irreducibleComponents

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse