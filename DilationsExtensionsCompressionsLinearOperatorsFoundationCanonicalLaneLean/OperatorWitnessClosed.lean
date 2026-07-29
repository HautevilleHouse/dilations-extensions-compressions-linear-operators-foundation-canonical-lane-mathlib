import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsFoundation

def OperatorWitnessClosed (O : AdmittedOperator) : Prop :=
  O.bounded ∧ O.linear ∧ O.dilationAdmissible ∧ O.compressionAdmissible ∧ O.extensionAdmissible

theorem operator_witness_closed_from_admitted (O : AdmittedOperator) :
    OperatorWitnessClosed O := by
  exact O.conclusion

end DilationsExtensionsCompressionsLinearOperatorsFoundation
end HautevilleHouse
