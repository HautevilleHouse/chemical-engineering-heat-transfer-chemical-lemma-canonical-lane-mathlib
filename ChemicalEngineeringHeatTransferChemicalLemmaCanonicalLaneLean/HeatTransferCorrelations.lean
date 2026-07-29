import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatTransferCorrelations where
  nusseltNumberCorrelation : String
  reynoldsNumber : ℝ
  prandtlNumber : ℝ
  heatTransferCoefficient : ℝ
  correlationValid : Prop

defaultInstance : HeatTransferCorrelations where
  nusseltNumberCorrelation := "Dittus-Boelter: Nu = 0.023 Re^0.8 Pr^0.4"
  reynoldsNumber := 10000.0
  prandtlNumber := 7.0
  heatTransferCoefficient := 500.0
  correlationValid := True

theorem heat_transfer_correlation_applicable (h : HeatTransferCorrelations) : h.correlationValid := by
  exact h.correlationValid

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse