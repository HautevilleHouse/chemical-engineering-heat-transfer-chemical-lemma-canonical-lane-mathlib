import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatTransferPhysicalModel where
  conductivityLaw : Prop
  convectionCoefficient : Prop
  radiationBoundary : Prop
  interfaceTemperature : Prop
  conductivityLawClosed : conductivityLaw
  convectionCoefficientClosed : convectionCoefficient
  radiationBoundaryClosed : radiationBoundary
  interfaceTemperatureClosed : interfaceTemperature

structure HeatTransferPhysicalEvidence (H : HeatTransferPhysicalModel) where
  conductivityLawClosed : H.conductivityLaw
  convectionCoefficientClosed : H.convectionCoefficient
  radiationBoundaryClosed : H.radiationBoundary
  interfaceTemperatureClosed : H.interfaceTemperature

def HeatTransferPhysicalClosed (H : HeatTransferPhysicalModel) : Prop :=
  H.conductivityLaw ∧ H.convectionCoefficient ∧
  H.radiationBoundary ∧ H.interfaceTemperature

theorem heat_transfer_physical_closed_from_evidence (H : HeatTransferPhysicalModel)
    (E : HeatTransferPhysicalEvidence H) : HeatTransferPhysicalClosed H := by
  exact And.intro E.conductivityLawClosed
    (And.intro E.convectionCoefficientClosed
      (And.intro E.radiationBoundaryClosed E.interfaceTemperatureClosed))

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse