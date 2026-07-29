import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.OrthomodularLattice

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure VonNeumannRegularRing {A : AdmissibleClass} {CG : ContinuousGeometry A}
    (OL : OrthomodularLattice CG) where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  regularCondition : ∀ a, ∃ x, a * x * a = a
  latticeEmbedding : CG.carrier → carrier
  compatibility : ∀ x y, latticeEmbedding (CG.join x y) = addition (latticeEmbedding x) (latticeEmbedding y)

structure VonNeumannRegularRingEvidence {A : AdmissibleClass} {CG : ContinuousGeometry A}
    {OL : OrthomodularLattice CG} (VN : VonNeumannRegularRing OL) where
  regularConditionClosed : VN.regularCondition
  compatibilityClosed : VN.compatibility

def VonNeumannRegularRingClosed {A : AdmissibleClass} {CG : ContinuousGeometry A}
    {OL : OrthomodularLattice CG} (VN : VonNeumannRegularRing OL) : Prop :=
  VN.regularCondition ∧ VN.compatibility

theorem von_neumann_regular_ring_closed_from_evidence {A : AdmissibleClass} {CG : ContinuousGeometry A}
    {OL : OrthomodularLattice CG} (VN : VonNeumannRegularRing OL)
    (E : VonNeumannRegularRingEvidence VN) : VonNeumannRegularRingClosed VN := by
  exact And.intro E.regularConditionClosed E.compatibilityClosed

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
