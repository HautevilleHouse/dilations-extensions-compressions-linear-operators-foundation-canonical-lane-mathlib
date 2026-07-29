import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

structure SpectralDecomposition (H : Type u) [HilbertSpace H] where
  operator : H →ₗ[ℝ] H
  selfAdjoint : Prop
  spectralMeasure : Type v
  integrationFormula : Prop
  functionalCalculus : Prop

structure SpectralEvidence {H : Type u} [HilbertSpace H] (S : SpectralDecomposition H) where
  selfAdjointClosed : S.selfAdjoint
  integrationFormulaClosed : S.integrationFormula
  functionalCalculusClosed : S.functionalCalculus

def SpectralClosed {H : Type u} [HilbertSpace H] (S : SpectralDecomposition H) : Prop :=
  S.selfAdjoint ∧ S.integrationFormula ∧ S.functionalCalculus

theorem spectral_closed_from_evidence
    {H : Type u} [HilbertSpace H] (S : SpectralDecomposition H) (E : SpectralEvidence S) :
    SpectralClosed S := by
  exact And.intro E.selfAdjointClosed (And.intro E.integrationFormulaClosed E.functionalCalculusClosed)

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse
