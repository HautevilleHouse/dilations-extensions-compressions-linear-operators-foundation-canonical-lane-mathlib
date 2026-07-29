import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

structure IsometricDilationPackage (X : AdmissibleClass) where
  originalOperator : Type
  dilationSpace : Type
  isometricDilation : originalOperator → dilationSpace
  isometricProperty : originalOperator → Prop

structure IsometricDilationEvidence {X : AdmissibleClass} (P : IsometricDilationPackage X) where
  isometricPropertyClosed : ∀ x, P.isometricProperty x

def IsometricDilationClosed {X : AdmissibleClass} (P : IsometricDilationPackage X) : Prop :=
  ∀ x, P.isometricProperty x

theorem isometric_dilation_closed_from_evidence {X : AdmissibleClass} (P : IsometricDilationPackage X)
    (E : IsometricDilationEvidence P) : IsometricDilationClosed P :=
  E.isometricPropertyClosed

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse