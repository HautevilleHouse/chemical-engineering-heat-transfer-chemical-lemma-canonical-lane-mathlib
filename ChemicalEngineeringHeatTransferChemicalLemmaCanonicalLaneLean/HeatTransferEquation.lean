import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatTransferEquationPackage where
  temperatureField : Type u
  thermalConductivity : Type v
  heatCapacity : Type w
  density : Type x
  initialCondition : Prop
  boundaryCondition : Prop
  heatEquationValid : Prop

structure HeatTransferEquationEvidence (H : HeatTransferEquationPackage) where
  initialConditionClosed : H.initialCondition
  boundaryConditionClosed : H.boundaryCondition
  heatEquationValidClosed : H.heatEquationValid

def HeatTransferEquationClosed (H : HeatTransferEquationPackage) : Prop :=
  H.initialCondition ∧ H.boundaryCondition ∧ H.heatEquationValid

theorem heat_transfer_equation_closed_from_evidence (H : HeatTransferEquationPackage)
    (E : HeatTransferEquationEvidence H) : HeatTransferEquationClosed H := by
  exact And.intro E.initialConditionClosed (And.intro E.boundaryConditionClosed E.heatEquationValidClosed)

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
