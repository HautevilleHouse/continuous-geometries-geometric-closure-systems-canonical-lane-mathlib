import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ContinuousGeometry where
  carrier : Type u
  lattice : carrier → carrier → carrier
  meet : carrier → carrier → carrier
  join : carrier → carrier → carrier
  continuousLattice : Prop
  modularLattice : Prop
  complemented : Prop
  irreducible : Prop
  continuousLatticeTerm : continuousLattice
  modularLatticeTerm : modularLattice
  complementedTerm : complemented
  irreducibleTerm : irreducible

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse