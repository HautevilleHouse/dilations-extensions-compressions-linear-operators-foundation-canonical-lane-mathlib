import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure SpectralMeasurePackage where
  selfAdjointOperator : Type u → Type u
  spectralMeasure : Type u → ℂ → Prop
  resolutionOfIdentity : Prop
  functionalCalculus : Prop
  spectralTheoremClosed : Prop

def SpectralMeasureClosed (S : SpectralMeasurePackage) : Prop :=
  S.resolutionOfIdentity ∧ S.functionalCalculus ∧ S.spectralTheoremClosed

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse
