import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure ConvectionDiffusionPackage where
  velocityField : ℝ → ℝ
  diffusivity : ℝ
  concentration : ℝ → ℝ → ℝ
  convectionTerm : ℝ → ℝ
  diffusionTerm : ℝ → ℝ
  pdeSatisfied : Prop

structure ConvectionDiffusionEvidence (C : ConvectionDiffusionPackage) where
  pdeSatisfiedClosed : C.pdeSatisfied

def ConvectionDiffusionClosed (C : ConvectionDiffusionPackage) : Prop :=
  C.pdeSatisfied

theorem convection_diffusion_closed_from_evidence (C : ConvectionDiffusionPackage)
    (E : ConvectionDiffusionEvidence C) : ConvectionDiffusionClosed C := by
  exact E.pdeSatisfiedClosed

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse