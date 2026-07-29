import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure ThermalBoundaryLayerPackage where
  boundaryLayerThickness : Type u
  nusseltNumber : Type v
  convectiveCoefficient : Type w
  laminarFlowAssumption : Prop
  turbulentCorrection : Prop
  similaritySolution : Prop

structure ThermalBoundaryLayerEvidence (T : ThermalBoundaryLayerPackage) where
  laminarFlowAssumptionClosed : T.laminarFlowAssumption
  turbulentCorrectionClosed : T.turbulentCorrection
  similaritySolutionClosed : T.similaritySolution

def ThermalBoundaryLayerClosed (T : ThermalBoundaryLayerPackage) : Prop :=
  T.laminarFlowAssumption ∧ T.turbulentCorrection ∧ T.similaritySolution

theorem thermal_boundary_layer_closed_from_evidence (T : ThermalBoundaryLayerPackage)
    (E : ThermalBoundaryLayerEvidence T) : ThermalBoundaryLayerClosed T := by
  exact And.intro E.laminarFlowAssumptionClosed (And.intro E.turbulentCorrectionClosed E.similaritySolutionClosed)

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
