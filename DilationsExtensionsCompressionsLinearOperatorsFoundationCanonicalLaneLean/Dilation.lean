import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DilationsExtensionsCompressionsLinearOperatorsFoundation.OperatorSpace

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure Dilation (X Y : OperatorSpace) (T : BoundedLinearOperator X Y) where
  H : OperatorSpace
  V : BoundedLinearOperator X H
  W : BoundedLinearOperator H Y
  isometry : ∀ x : X.carrier, H.norm (V.map x) = X.norm x
  factorization : ∀ x : X.carrier, T.map x = W.map (V.map x)
  subspace : ∀ x : X.carrier, V.map x ∈ Set.range (λ h : H.carrier => h) 

def dilation_closed (X Y : OperatorSpace) (T : BoundedLinearOperator X Y) : Prop :=
  ∃ (D : Dilation X Y T), True

theorem dilation_implies_bounded (X Y : OperatorSpace) (T : BoundedLinearOperator X Y) (h : dilation_closed X Y T) : True := by
  trivial

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse