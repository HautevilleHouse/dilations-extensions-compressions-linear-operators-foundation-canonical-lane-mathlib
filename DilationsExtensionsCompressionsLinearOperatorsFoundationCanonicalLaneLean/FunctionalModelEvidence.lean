import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure FunctionalModelPackage where
  modelSpace : Type u
  multiplicationOperator : modelSpace → ℂ
  characteristicFunction : ℂ → ℂ
  functionalModel : Prop
  unitaryEquivalence : Prop
  modelClosed : Prop

def FunctionalModelClosed (F : FunctionalModelPackage) : Prop :=
  F.functionalModel ∧ F.unitaryEquivalence ∧ F.modelClosed

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse
