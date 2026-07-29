import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure ChemicalReactorHeatBalancePackage where
  reactionEnthalpy : Type u
  heatGenerationTerm : Type v
  energyBalanceEquation : Prop
  adiabaticOperation : Prop
  isothermalOperation : Prop
  steadyStateAssumption : Prop

structure ChemicalReactorHeatBalanceEvidence (C : ChemicalReactorHeatBalancePackage) where
  energyBalanceEquationClosed : C.energyBalanceEquation
  adiabaticOperationClosed : C.adiabaticOperation
  isothermalOperationClosed : C.isothermalOperation
  steadyStateAssumptionClosed : C.steadyStateAssumption

def ChemicalReactorHeatBalanceClosed (C : ChemicalReactorHeatBalancePackage) : Prop :=
  C.energyBalanceEquation ∧ C.adiabaticOperation ∧ C.isothermalOperation ∧ C.steadyStateAssumption

theorem chemical_reactor_heat_balance_closed_from_evidence
    (C : ChemicalReactorHeatBalancePackage)
    (E : ChemicalReactorHeatBalanceEvidence C) : ChemicalReactorHeatBalanceClosed C := by
  exact And.intro E.energyBalanceEquationClosed
    (And.intro E.adiabaticOperationClosed
      (And.intro E.isothermalOperationClosed E.steadyStateAssumptionClosed))

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
