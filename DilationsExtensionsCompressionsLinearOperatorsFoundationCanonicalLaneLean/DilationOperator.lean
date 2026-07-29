import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean

structure DilationFamily (X : Type u) [NormedAddCommGroup X] where
  parameter : Type v
  family : parameter → X → X
  homomorphismProp : ∀ (p q : parameter), family (p + q) = family p ∘ family q
  continuity : ∀ (x : X), Continuous fun (p : parameter) => family p x
  adjointExists : Prop

structure DilationEvidence {X : Type u} [NormedAddCommGroup X] (D : DilationFamily X) where
  homomorphismClosed : D.homomorphismProp
  continuityClosed : D.continuity
  adjointExistsClosed : D.adjointExists

def DilationClosed {X : Type u} [NormedAddCommGroup X] (D : DilationFamily X) : Prop :=
  D.homomorphismProp ∧ D.continuity ∧ D.adjointExists

theorem dilation_closed_from_evidence
    {X : Type u} [NormedAddCommGroup X] (D : DilationFamily X) (E : DilationEvidence D) :
    DilationClosed D := by
  exact And.intro E.homomorphismClosed (And.intro E.continuityClosed E.adjointExistsClosed)

end DilationsExtensionsCompressionsLinearOperatorsFoundationCanonicalLaneLean
end HautevilleHouse
