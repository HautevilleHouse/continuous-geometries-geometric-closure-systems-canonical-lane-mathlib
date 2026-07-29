import continuousGeometriesGeometricClosureSystemsCanonicalLaneLean.ContinuousGeometriesPackage

/-!
# Closure Systems Package for Continuous Geometries
-/

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ClosureSystemPackage {G : ContinuousGeometryPackage} (C : ContinuousGeometryClosed G) where
  closureOperator : Type u
  exchangeProperty : Prop
  matroidAxioms : Prop
  rankFunctionContinuous : Prop

structure ClosureSystemEvidence {G : ContinuousGeometryPackage} {C : ContinuousGeometryClosed G}
    (S : ClosureSystemPackage C) where
  exchangePropertyClosed : S.exchangeProperty
  matroidAxiomsClosed : S.matroidAxioms
  rankFunctionContinuousClosed : S.rankFunctionContinuous

def ClosureSystemClosed {G : ContinuousGeometryPackage} {C : ContinuousGeometryClosed G}
    (S : ClosureSystemPackage C) : Prop :=
  S.exchangeProperty ∧ S.matroidAxioms ∧ S.rankFunctionContinuous

theorem closure_system_closed_from_evidence {G : ContinuousGeometryPackage} {C : ContinuousGeometryClosed G}
    (S : ClosureSystemPackage C) (E : ClosureSystemEvidence S) : ClosureSystemClosed S := by
  exact And.intro E.exchangePropertyClosed
    (And.intro E.matroidAxiomsClosed E.rankFunctionContinuousClosed)

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse