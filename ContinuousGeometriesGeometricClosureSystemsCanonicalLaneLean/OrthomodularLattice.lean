import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.ContinuousGeometry

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure OrthomodularLattice {A : AdmissibleClass} (CG : ContinuousGeometry A) where
  orthocomplement : CG.carrier → CG.carrier
  orthomodularLaw : ∀ x : CG.carrier, CG.join x (CG.meet (orthocomplement x) x) = CG.meet (orthocomplement x) x
  involutive : ∀ x, orthocomplement (orthocomplement x) = x
  deMorgan : ∀ x y, orthocomplement (CG.join x y) = CG.meet (orthocomplement x) (orthocomplement y)

structure OrthomodularLatticeEvidence {A : AdmissibleClass} {CG : ContinuousGeometry A}
    (OL : OrthomodularLattice CG) where
  orthomodularLawClosed : OL.orthomodularLaw
  involutiveClosed : OL.involutive
  deMorganClosed : OL.deMorgan

def OrthomodularLatticeClosed {A : AdmissibleClass} {CG : ContinuousGeometry A}
    (OL : OrthomodularLattice CG) : Prop :=
  OL.orthomodularLaw ∧ OL.involutive ∧ OL.deMorgan

theorem orthomodular_lattice_closed_from_evidence {A : AdmissibleClass} {CG : ContinuousGeometry A}
    (OL : OrthomodularLattice CG) (E : OrthomodularLatticeEvidence OL) : OrthomodularLatticeClosed OL := by
  exact And.intro E.orthomodularLawClosed (And.intro E.involutiveClosed E.deMorganClosed)

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
