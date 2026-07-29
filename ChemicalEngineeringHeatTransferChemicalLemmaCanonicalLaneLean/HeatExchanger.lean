import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatExchangerPackage (A : AdmissibleClass) where
  logMeanTemperatureDifference : Prop
  overallHeatTransferCoefficient : Prop
  heatTransferArea : Prop
  energyBalance : Prop

structure HeatExchangerEvidence {A : AdmissibleClass} (H : HeatExchangerPackage A) where
  logMeanTemperatureDifferenceClosed : H.logMeanTemperatureDifference
  overallHeatTransferCoefficientClosed : H.overallHeatTransferCoefficient
  heatTransferAreaClosed : H.heatTransferArea
  energyBalanceClosed : H.energyBalance

def HeatExchangerClosed {A : AdmissibleClass} (H : HeatExchangerPackage A) : Prop :=
  H.logMeanTemperatureDifference ∧ H.overallHeatTransferCoefficient ∧ H.heatTransferArea ∧ H.energyBalance

theorem heat_exchanger_closed_from_evidence {A : AdmissibleClass} (H : HeatExchangerPackage A) (E : HeatExchangerEvidence H) : HeatExchangerClosed H := by
  exact And.intro E.logMeanTemperatureDifferenceClosed (And.intro E.overallHeatTransferCoefficientClosed (And.intro E.heatTransferAreaClosed E.energyBalanceClosed))

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
