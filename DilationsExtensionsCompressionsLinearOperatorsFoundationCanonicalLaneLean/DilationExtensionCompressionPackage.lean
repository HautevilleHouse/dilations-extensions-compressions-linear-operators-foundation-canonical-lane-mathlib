import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

structure DilationPackage (A : AdmissibleClass) where
  dilationOperator : AdmittedOperator
  isometry : Prop
  orthogonalComplement : Prop
  minimalDilation : Prop
  uniqueness : Prop

structure DilationEvidence (A : AdmissibleClass) (D : DilationPackage A) where
  isometryClosed : D.isometry
  orthogonalComplementClosed : D.orthogonalComplement
  minimalDilationClosed : D.minimalDilation
  uniquenessClosed : D.uniqueness

def DilationClosed (A : AdmissibleClass) (D : DilationPackage A) : Prop :=
  D.isometry ∧ D.orthogonalComplement ∧ D.minimalDilation ∧ D.uniqueness

theorem dilation_closed_from_evidence (A : AdmissibleClass) (D : DilationPackage A) (E : DilationEvidence A D) :
    DilationClosed A D := by
  exact And.intro E.isometryClosed (And.intro E.orthogonalComplementClosed (And.intro E.minimalDilationClosed E.uniquenessClosed))

structure ExtensionPackage (A : AdmissibleClass) where
  extensionOperator : AdmittedOperator
  subspace : Prop
  boundedExtension : Prop
  minimalExtension : Prop
  uniqueness : Prop

structure ExtensionEvidence (A : AdmissibleClass) (E : ExtensionPackage A) where
  subspaceClosed : E.subspace
  boundedExtensionClosed : E.boundedExtension
  minimalExtensionClosed : E.minimalExtension
  uniquenessClosed : E.uniqueness

def ExtensionClosed (A : AdmissibleClass) (E : ExtensionPackage A) : Prop :=
  E.subspace ∧ E.boundedExtension ∧ E.minimalExtension ∧ E.uniqueness

theorem extension_closed_from_evidence (A : AdmissibleClass) (E : ExtensionPackage A) (Ev : ExtensionEvidence A E) :
    ExtensionClosed A E := by
  exact And.intro Ev.subspaceClosed (And.intro Ev.boundedExtensionClosed (And.intro Ev.minimalExtensionClosed Ev.uniquenessClosed))

structure CompressionPackage (A : AdmissibleClass) where
  compressionOperator : AdmittedOperator
  compressionSubspace : Prop
  spectralProperties : Prop
  minimalCompression : Prop
  uniqueness : Prop

structure CompressionEvidence (A : AdmissibleClass) (C : CompressionPackage A) where
  compressionSubspaceClosed : C.compressionSubspace
  spectralPropertiesClosed : C.spectralProperties
  minimalCompressionClosed : C.minimalCompression
  uniquenessClosed : C.uniqueness

def CompressionClosed (A : AdmissibleClass) (C : CompressionPackage A) : Prop :=
  C.compressionSubspace ∧ C.spectralProperties ∧ C.minimalCompression ∧ C.uniqueness

theorem compression_closed_from_evidence (A : AdmissibleClass) (C : CompressionPackage A) (Ev : CompressionEvidence A C) :
    CompressionClosed A C := by
  exact And.intro Ev.compressionSubspaceClosed (And.intro Ev.spectralPropertiesClosed (And.intro Ev.minimalCompressionClosed Ev.uniquenessClosed))

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse
