import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatConductionPackage (A : AdmissibleClass) where
  thermalConductivity : Prop
  temperatureGradient : Prop
  heatFluxLaw : Prop
  steadyState : Prop

structure HeatConductionEvidence {A : AdmissibleClass} (H : HeatConductionPackage A) where
  thermalConductivityClosed : H.thermalConductivity
  temperatureGradientClosed : H.temperatureGradient
  heatFluxLawClosed : H.heatFluxLaw
  steadyStateClosed : H.steadyState

def HeatConductionClosed {A : AdmissibleClass} (H : HeatConductionPackage A) : Prop :=
  H.thermalConductivity ∧ H.temperatureGradient ∧ H.heatFluxLaw ∧ H.steadyState

theorem heat_conduction_closed_from_evidence {A : AdmissibleClass} (H : HeatConductionPackage A) (E : HeatConductionEvidence H) : HeatConductionClosed H := by
  exact And.intro E.thermalConductivityClosed (And.intro E.temperatureGradientClosed (And.intro E.heatFluxLawClosed E.steadyStateClosed))

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
