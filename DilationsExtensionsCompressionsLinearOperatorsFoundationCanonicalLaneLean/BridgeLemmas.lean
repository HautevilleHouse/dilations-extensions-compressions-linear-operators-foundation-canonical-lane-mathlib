import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

def bridgeClosed (A : LinearOperatorAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : LinearOperatorAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse