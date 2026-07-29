import ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuousGeometryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse