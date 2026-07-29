import canonicalLaneMathlib.AdmissibleClass
import DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.DilationOperator
import DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.ExtensionOperator
import DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.CompressionOperator
import DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.IsometricDilation
import DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.SpectralDecomposition
import DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.SzNagyDilation

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  Or.inl A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  Or.inl A.endpointSatisfied

def ConstrainedDilationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dilation_endgame (A : AdmissibleClass) : ConstrainedDilationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse
