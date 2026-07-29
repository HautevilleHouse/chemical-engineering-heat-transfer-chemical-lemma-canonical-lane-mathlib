import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatConductionPackage where
  thermalConductivity : ℝ
  specificHeat : ℝ
  density : ℝ
  temperatureField : ℝ → ℝ → ℝ
  heatEquationSatisfied : Prop

structure HeatConductionEvidence (H : HeatConductionPackage) where
  heatEquationSatisfiedClosed : H.heatEquationSatisfied

def HeatConductionClosed (H : HeatConductionPackage) : Prop :=
  H.heatEquationSatisfied

theorem heat_conduction_closed_from_evidence (H : HeatConductionPackage)
    (E : HeatConductionEvidence H) : HeatConductionClosed H := by
  exact E.heatEquationSatisfiedClosed

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse