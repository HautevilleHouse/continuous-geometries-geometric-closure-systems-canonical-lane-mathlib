import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.ClosureOperatorPackage

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure GeometricClosurePackage {G : ContinuousGeometry} (C : ClosureOperator G) where
  exchangeProperty : Prop
  antiExchangeProperty : Prop
  finiteCharacter : Prop
  closureFinite : Prop
  exchangePropertyTerm : exchangeProperty
  antiExchangePropertyTerm : antiExchangeProperty
  finiteCharacterTerm : finiteCharacter
  closureFiniteTerm : closureFinite

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse