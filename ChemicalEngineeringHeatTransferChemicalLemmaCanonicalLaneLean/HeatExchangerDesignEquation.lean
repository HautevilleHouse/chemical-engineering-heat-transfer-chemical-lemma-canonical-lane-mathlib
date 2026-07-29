import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatExchangerDesignPackage where
  overallHeatTransferCoefficient : ℝ
  heatTransferArea : ℝ
  logMeanTemperatureDifference : ℝ
  designEquationSatisfied : Prop

structure HeatExchangerDesignEvidence (H : HeatExchangerDesignPackage) where
  designEquationSatisfiedClosed : H.designEquationSatisfied

def HeatExchangerDesignClosed (H : HeatExchangerDesignPackage) : Prop :=
  H.designEquationSatisfied

theorem heat_exchanger_design_closed_from_evidence (H : HeatExchangerDesignPackage)
    (E : HeatExchangerDesignEvidence H) : HeatExchangerDesignClosed H := by
  exact E.designEquationSatisfiedClosed

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse