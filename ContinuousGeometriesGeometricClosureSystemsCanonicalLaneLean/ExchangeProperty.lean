import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ExchangeProperty (G : ContinuousGeometry) where
  exchangeAxiom : ∀ (A : G.carrier → Prop) (x y : G.carrier),
    G.isClosed (A ∪ {x}) → ¬ G.isClosed A → G.isClosed (A ∪ {y}) → y ∈ G.closureOperator (A ∪ {x})
  exchangeClosed : exchangeAxiom

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
