import continuousGeometriesGeometricClosureSystemsCanonicalLaneLean.AdmissibleClass

/-!
# Continuous Geometries Geometric Closure Systems Package
-/

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ContinuousGeometryPackage where
  latticeType : Type u
  joinContinuous : Prop
  meetContinuous : Prop
  irreducibleDecomposition : Prop
  dimensionFunction : Prop

structure ContinuousGeometryEvidence (G : ContinuousGeometryPackage) where
  joinContinuousClosed : G.joinContinuous
  meetContinuousClosed : G.meetContinuous
  irreducibleDecompositionClosed : G.irreducibleDecomposition
  dimensionFunctionClosed : G.dimensionFunction

def ContinuousGeometryClosed (G : ContinuousGeometryPackage) : Prop :=
  G.joinContinuous ∧ G.meetContinuous ∧ G.irreducibleDecomposition ∧ G.dimensionFunction

theorem continuous_geometry_closed_from_evidence (G : ContinuousGeometryPackage)
    (E : ContinuousGeometryEvidence G) : ContinuousGeometryClosed G := by
  exact And.intro E.joinContinuousClosed
    (And.intro E.meetContinuousClosed
      (And.intro E.irreducibleDecompositionClosed E.dimensionFunctionClosed))

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse