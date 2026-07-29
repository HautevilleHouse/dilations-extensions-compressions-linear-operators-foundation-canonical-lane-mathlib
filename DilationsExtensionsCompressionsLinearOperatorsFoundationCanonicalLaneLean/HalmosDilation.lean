import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

structure HalmosDilationPackage (X : AdmissibleClass) where
  originalOperator : Type
  dilationSpace : Type
  minimalDilation : originalOperator → dilationSpace
  minimalityProperty : Prop

structure HalmosDilationEvidence {X : AdmissibleClass} (P : HalmosDilationPackage X) where
  minimalityPropertyClosed : P.minimalityProperty

def HalmosDilationClosed {X : AdmissibleClass} (P : HalmosDilationPackage X) : Prop :=
  P.minimalityProperty

theorem halmos_dilation_closed_from_evidence {X : AdmissibleClass} (P : HalmosDilationPackage X)
    (E : HalmosDilationEvidence P) : HalmosDilationClosed P :=
  E.minimalityPropertyClosed

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse