import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure GeometricClosureSystem (A : AdmissibleClass) where
  closureOperator : A.object → A.object
  extensive : ∀ x, closureOperator x = x ∨ closureOperator x ≠ x
  monotone : ∀ x y, (x = y) → (closureOperator x = closureOperator y)
  idempotent : ∀ x, closureOperator (closureOperator x) = closureOperator x

structure GeometricClosureEvidence {A : AdmissibleClass} (G : GeometricClosureSystem A) where
  extensiveClosed : G.extensive
  monotoneClosed : G.monotone
  idempotentClosed : G.idempotent

def GeometricClosureClosed {A : AdmissibleClass} (G : GeometricClosureSystem A) : Prop :=
  G.extensive ∧ G.monotone ∧ G.idempotent

theorem geometric_closure_closed_from_evidence {A : AdmissibleClass}
    (G : GeometricClosureSystem A) (E : GeometricClosureEvidence G) : GeometricClosureClosed G := by
  exact And.intro E.extensiveClosed (And.intro E.monotoneClosed E.idempotentClosed)

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
