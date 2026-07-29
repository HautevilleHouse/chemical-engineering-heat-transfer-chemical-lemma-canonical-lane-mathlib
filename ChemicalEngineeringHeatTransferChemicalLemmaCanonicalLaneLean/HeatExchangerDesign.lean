import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatExchangerDesignPackage where
  overallHeatTransferCoefficient : Type u
  logMeanTemperatureDifference : Type v
  effectivenessNTU : Type w
  counterFlowModel : Prop
  parallelFlowModel : Prop
  foulingFactor : Prop

structure HeatExchangerDesignEvidence (H : HeatExchangerDesignPackage) where
  counterFlowModelClosed : H.counterFlowModel
  parallelFlowModelClosed : H.parallelFlowModel
  foulingFactorClosed : H.foulingFactor

def HeatExchangerDesignClosed (H : HeatExchangerDesignPackage) : Prop :=
  H.counterFlowModel ∧ H.parallelFlowModel ∧ H.foulingFactor

theorem heat_exchanger_design_closed_from_evidence (H : HeatExchangerDesignPackage)
    (E : HeatExchangerDesignEvidence H) : HeatExchangerDesignClosed H := by
  exact And.intro E.counterFlowModelClosed (And.intro E.parallelFlowModelClosed E.foulingFactorClosed)

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
