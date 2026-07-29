import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure FourierBoundaryLayer where
  temperatureGradient : ℝ → ℝ
  thermalConductivity : ℝ
  boundaryLayerThickness : ℝ
  heatFlux : ℝ
  laplaceEquationSatisfied : Prop

def FourierBoundaryLayer.heatFluxFromGradient (fb : FourierBoundaryLayer) : ℝ :=
  -fb.thermalConductivity * fb.temperatureGradient 0

theorem fourier_law_holds (fb : FourierBoundaryLayer) :
    fb.heatFlux = -fb.thermalConductivity * fb.temperatureGradient 0 := by
  rfl

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse