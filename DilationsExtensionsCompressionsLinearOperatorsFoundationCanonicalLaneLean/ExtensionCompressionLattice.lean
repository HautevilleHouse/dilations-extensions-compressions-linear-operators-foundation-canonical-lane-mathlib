import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure ExtensionCompressionLattice where
  baseOperator : ℕ → ℂ → ℂ
  extensionFamily : ℕ → ℕ → ℂ → ℂ
  compressionFamily : ℕ → ℕ → ℂ → ℂ
  extensionClosed : Prop
  compressionClosed : Prop
  inclusionProperties : Prop

def LatticeClosure (L : ExtensionCompressionLattice) : Prop :=
  L.extensionClosed ∧ L.compressionClosed ∧ L.inclusionProperties

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse
