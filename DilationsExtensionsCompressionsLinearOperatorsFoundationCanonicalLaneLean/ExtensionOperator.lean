import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

structure ExtensionOperator (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] where
  subspace : Submodule ℝ X
  operatorOnSubspace : subspace →ₗ[ℝ] Y
  extension : X →ₗ[ℝ] Y
  extendsOnSubspace : ∀ (x : subspace), extension x.1 = operatorOnSubspace x
  normControlled : ‖extension‖ ≤ ‖operatorOnSubspace‖

structure ExtensionEvidence {X Y : Type u} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    (E : ExtensionOperator X Y) where
  extendsOnSubspaceClosed : E.extendsOnSubspace
  normControlledClosed : E.normControlled

def ExtensionClosed {X Y : Type u} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    (E : ExtensionOperator X Y) : Prop :=
  E.extendsOnSubspace ∧ E.normControlled

theorem extension_closed_from_evidence
    {X Y : Type u} [NormedAddCommGroup X] [NormedAddCommGroup Y]
    (E : ExtensionOperator X Y) (Ev : ExtensionEvidence E) : ExtensionClosed E := by
  exact And.intro Ev.extendsOnSubspaceClosed Ev.normControlledClosed

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse
