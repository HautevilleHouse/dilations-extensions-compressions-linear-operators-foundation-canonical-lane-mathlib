import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure OperatorSpace where
  carrier : Type u
  norm : carrier → ℝ
  zero : carrier
  add : carrier → carrier → carrier
  smul : ℝ → carrier → carrier
  norm_zero : norm zero = 0
  norm_add_le : ∀ x y : carrier, norm (add x y) ≤ norm x + norm y
  norm_smul : ∀ a : ℝ, ∀ x : carrier, norm (smul a x) = |a| * norm x

structure BoundedLinearOperator (X Y : OperatorSpace) where
  map : X.carrier → Y.carrier
  linear : ∀ a b : ℝ, ∀ x y : X.carrier, map (X.add (X.smul a x) (X.smul b y)) = Y.add (Y.smul a (map x)) (Y.smul b (map y))
  bounded : ∃ M : ℝ, ∀ x : X.carrier, Y.norm (map x) ≤ M * X.norm x

def operator_norm {X Y : OperatorSpace} (T : BoundedLinearOperator X Y) : ℝ :=
  Inf {M | ∀ x : X.carrier, Y.norm (T.map x) ≤ M * X.norm x}

theorem operator_norm_bound {X Y : OperatorSpace} (T : BoundedLinearOperator X Y) (x : X.carrier) :
  Y.norm (T.map x) ≤ operator_norm T * X.norm x := by
  sorry

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse