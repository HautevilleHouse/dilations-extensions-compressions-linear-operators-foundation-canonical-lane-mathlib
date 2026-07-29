import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

structure CompressionOperator (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] where
  subspace : Submodule ℝ Y
  operatorOnWhole : X →ₗ[ℝ] Y
  compression : X →ₗ[ℝ] subspace
  commutesWithInclusion : ∀ (x : X), (subspace.subtype ∘ compression) x = operatorOnWhole x
  normControlled : ‖compression‖ ≤ ‖operatorOnWhole‖

structure CompressionEvidence {X Y : Type u} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    (C : CompressionOperator X Y) where
  commutesWithInclusionClosed : C.commutesWithInclusion
  normControlledClosed : C.normControlled

def CompressionClosed {X Y : Type u} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    (C : CompressionOperator X Y) : Prop :=
  C.commutesWithInclusion ∧ C.normControlled

theorem compression_closed_from_evidence
    {X Y : Type u} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    (C : CompressionOperator X Y) (Ev : CompressionEvidence C) : CompressionClosed C := by
  exact And.intro Ev.commutesWithInclusionClosed Ev.normControlledClosed

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse
