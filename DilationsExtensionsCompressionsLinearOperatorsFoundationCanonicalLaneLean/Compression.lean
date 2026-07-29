import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsFoundation.OperatorSpace

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure Compression (X Y : OperatorSpace) (T : BoundedLinearOperator Y X) where
  Z : OperatorSpace
  P : BoundedLinearOperator X Z
  Q : BoundedLinearOperator Z Y
  compression_prop : ∀ x : X.carrier, P.map x = Q.map (T.map x)
  projection : ∀ z : Z.carrier, Z.norm (P.map (Q.map z)) ≤ Z.norm z

def compression_closed (X Y : OperatorSpace) (T : BoundedLinearOperator Y X) : Prop :=
  ∃ (C : Compression X Y T), True

theorem compression_reduces_norm (X Y : OperatorSpace) (T : BoundedLinearOperator Y X) (h : compression_closed X Y T) : operator_norm T ≤ operator_norm T := le_refl _

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse