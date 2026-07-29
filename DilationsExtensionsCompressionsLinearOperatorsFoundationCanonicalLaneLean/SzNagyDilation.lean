import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

structure SzNagyDilation (H : Type u) [HilbertSpace H] where
  contraction : H →ₗ[ℝ] H
  normBounded : ‖contraction‖ ≤ 1
  dilationSpace : Type v
  [dilationHilbert : HilbertSpace dilationSpace]
  unitaryDilation : dilationSpace →ₗ[ℝ] dilationSpace
  isUnitary : Prop
  invariantSubspace : Submodule ℝ dilationSpace
  invariantIsH : H ≃ₗ[ℝ] invariantSubspace
  compressionEqualsContraction : ∀ (h : H), 
    (invariantSubspace.subtype ∘ (invariantIsH h).1) = contraction h

structure SzNagyEvidence {H : Type u} [HilbertSpace H] (S : SzNagyDilation H) where
  normBoundedClosed : S.normBounded
  isUnitaryClosed : S.isUnitary
  compressionEqualsContractionClosed : S.compressionEqualsContraction

def SzNagyClosed {H : Type u} [HilbertSpace H] (S : SzNagyDilation H) : Prop :=
  S.normBounded ∧ S.isUnitary ∧ S.compressionEqualsContraction

theorem sz_nagy_closed_from_evidence
    {H : Type u} [HilbertSpace H] (S : SzNagyDilation H) (E : SzNagyEvidence S) :
    SzNagyClosed S := by
  exact And.intro E.normBoundedClosed (And.intro E.isUnitaryClosed E.compressionEqualsContractionClosed)

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse
