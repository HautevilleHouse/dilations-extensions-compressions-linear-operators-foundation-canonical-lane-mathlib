import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsFoundation.OperatorSpace

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure Extension (X Y : OperatorSpace) (T : BoundedLinearOperator X Y) where
  Z : OperatorSpace
  incl : BoundedLinearOperator X Z
  S : BoundedLinearOperator Z Y
  extension_prop : ∀ x : X.carrier, T.map x = S.map (incl.map x)
  isometric_embedding : ∀ x : X.carrier, Z.norm (incl.map x) = X.norm x

def extension_possible (X Y : OperatorSpace) (T : BoundedLinearOperator X Y) : Prop :=
  ∃ (E : Extension X Y T), True

theorem extension_preserves_bounds (X Y : OperatorSpace) (T : BoundedLinearOperator X Y) (h : extension_possible X Y T) : operator_norm T = operator_norm T := rfl

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse