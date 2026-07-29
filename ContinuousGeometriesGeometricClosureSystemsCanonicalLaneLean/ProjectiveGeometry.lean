import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.VonNeumannRegularRing

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ProjectiveGeometry {A : AdmissibleClass} {CG : ContinuousGeometry A}
    {OL : OrthomodularLattice CG} {VN : VonNeumannRegularRing OL} where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  projectiveAxioms : Prop
  coordinatization : VN.carrier → pointSet

structure ProjectiveGeometryEvidence {A : AdmissibleClass} {CG : ContinuousGeometry A}
    {OL : OrthomodularLattice CG} {VN : VonNeumannRegularRing OL}
    (PG : ProjectiveGeometry VN) where
  projectiveAxiomsClosed : PG.projectiveAxioms

def ProjectiveGeometryClosed {A : AdmissibleClass} {CG : ContinuousGeometry A}
    {OL : OrthomodularLattice CG} {VN : VonNeumannRegularRing OL}
    (PG : ProjectiveGeometry VN) : Prop :=
  PG.projectiveAxioms

theorem projective_geometry_closed_from_evidence {A : AdmissibleClass} {CG : ContinuousGeometry A}
    {OL : OrthomodularLattice CG} {VN : VonNeumannRegularRing OL}
    (PG : ProjectiveGeometry VN) (E : ProjectiveGeometryEvidence PG) : ProjectiveGeometryClosed PG := by
  exact E.projectiveAxiomsClosed

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
