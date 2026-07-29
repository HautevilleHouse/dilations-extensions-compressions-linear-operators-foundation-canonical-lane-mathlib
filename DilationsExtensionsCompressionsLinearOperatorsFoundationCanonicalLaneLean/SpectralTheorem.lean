import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.DilationOperator
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.ExtensionOperator
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean.CompressionOperator

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

structure SpectralDecomposition (H : Type*) [NormedAddCommGroup H] [InnerProductSpace ℝ H] (T : H →L[ℝ] H) where
  spectrum : Set ℝ
  projectionValuedMeasure : ℝ → (H →L[ℝ] H)
  resolutionOfIdentity : ∀ x : H, x = ∫ t in spectrum, (projectionValuedMeasure t) x dt
  selfAdjoint : T = T.adj

def SpectralTheoremClosed (T : H →L[ℝ] H) : Prop :=
  ∃ (S : SpectralDecomposition H T), True

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse