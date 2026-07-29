import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure SpectralPackage (A : AdmissibleClass) where
  spectralMeasure : Prop
  spectralTheorem : Prop
  functionalCalculus : Prop
  compactOperatorCase : Prop

structure SpectralEvidence (A : AdmissibleClass) (S : SpectralPackage A) where
  spectralMeasureClosed : S.spectralMeasure
  spectralTheoremClosed : S.spectralTheorem
  functionalCalculusClosed : S.functionalCalculus
  compactOperatorCaseClosed : S.compactOperatorCase

def SpectralClosed (A : AdmissibleClass) (S : SpectralPackage A) : Prop :=
  S.spectralMeasure ∧ S.spectralTheorem ∧ S.functionalCalculus ∧ S.compactOperatorCase

theorem spectral_closed_from_evidence (A : AdmissibleClass) (S : SpectralPackage A) (E : SpectralEvidence A S) :
    SpectralClosed A S := by
  exact And.intro E.spectralMeasureClosed (And.intro E.spectralTheoremClosed (And.intro E.functionalCalculusClosed E.compactOperatorCaseClosed))

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse
