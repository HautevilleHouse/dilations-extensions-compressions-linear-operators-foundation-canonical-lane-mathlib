import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure ContractionSemigroup where
  semigroup : Type u → Type u
  generator : Type u → ℂ → ℂ
  contractionProperty : Prop
  dilationDilationProperty : Prop
  hilleYosidaCondition : Prop
  semigroupClosed : Prop

def SemigroupClosed (S : ContractionSemigroup) : Prop :=
  S.contractionProperty ∧ S.dilationDilationProperty ∧ S.hilleYosidaCondition ∧ S.semigroupClosed

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse
