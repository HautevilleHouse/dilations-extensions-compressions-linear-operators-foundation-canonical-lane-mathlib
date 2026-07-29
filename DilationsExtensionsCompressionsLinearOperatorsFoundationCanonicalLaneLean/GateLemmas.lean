import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

def gateClosed (A : LinearOperatorAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : LinearOperatorAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse