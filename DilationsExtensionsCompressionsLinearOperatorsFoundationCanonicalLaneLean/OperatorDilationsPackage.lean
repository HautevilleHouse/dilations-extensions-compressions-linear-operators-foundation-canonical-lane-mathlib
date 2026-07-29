import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure DilationTheoryPackage where
  underlyingSpace : Type u
  innerProduct : underlyingSpace → underlyingSpace → ℂ
  operator : underlyingSpace → underlyingSpace
  dilationSpace : Type v
  dilationOperator : dilationSpace → dilationSpace
  isometry : underlyingSpace → dilationSpace
  compression : dilationSpace → underlyingSpace
  unitaryCondition : Prop
  existenceClosed : Prop

def DilationTheoryClosed (D : DilationTheoryPackage) : Prop :=
  D.unitaryCondition ∧ D.existenceClosed

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse
