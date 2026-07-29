import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

structure ExtensionCompressionPackage (X : AdmissibleClass) where
  originalOperator : Type
  extensionSpace : Type
  compressionSpace : Type
  extensionMap : originalOperator → extensionSpace
  compressionMap : originalOperator → compressionSpace
  extensionClosed : Prop
  compressionClosed : Prop

structure ExtensionCompressionEvidence {X : AdmissibleClass} (P : ExtensionCompressionPackage X) where
  extensionClosedTerm : P.extensionClosed
  compressionClosedTerm : P.compressionClosed

def ExtensionCompressionClosed {X : AdmissibleClass} (P : ExtensionCompressionPackage X) : Prop :=
  P.extensionClosed ∧ P.compressionClosed

theorem extension_compression_closed_from_evidence {X : AdmissibleClass} (P : ExtensionCompressionPackage X)
    (E : ExtensionCompressionEvidence P) : ExtensionCompressionClosed P :=
  And.intro E.extensionClosedTerm E.compressionClosedTerm

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse