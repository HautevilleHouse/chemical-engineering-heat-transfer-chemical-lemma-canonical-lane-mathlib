import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure ConvectionCorrelationPackage (A : AdmissibleClass) where
  nusseltNumber : Prop
  reynoldsNumber : Prop
  prandtlNumber : Prop
  correlationValid : Prop

structure ConvectionCorrelationEvidence {A : AdmissibleClass} (C : ConvectionCorrelationPackage A) where
  nusseltNumberClosed : C.nusseltNumber
  reynoldsNumberClosed : C.reynoldsNumber
  prandtlNumberClosed : C.prandtlNumber
  correlationValidClosed : C.correlationValid

def ConvectionCorrelationClosed {A : AdmissibleClass} (C : ConvectionCorrelationPackage A) : Prop :=
  C.nusseltNumber ∧ C.reynoldsNumber ∧ C.prandtlNumber ∧ C.correlationValid

theorem convection_correlation_closed_from_evidence {A : AdmissibleClass} (C : ConvectionCorrelationPackage A) (E : ConvectionCorrelationEvidence C) : ConvectionCorrelationClosed C := by
  exact And.intro E.nusseltNumberClosed (And.intro E.reynoldsNumberClosed (And.intro E.prandtlNumberClosed E.correlationValidClosed))

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
