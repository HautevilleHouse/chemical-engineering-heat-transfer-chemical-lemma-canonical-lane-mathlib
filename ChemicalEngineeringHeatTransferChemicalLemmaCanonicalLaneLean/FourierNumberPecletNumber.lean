import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean.HeatTransferPhysicalModel

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure FourierNumberPackage (H : HeatTransferPhysicalModel) where
  fourierNumberDimensionless : Prop
  fourierNumberBound : Prop
  temperatureEvolution : Prop
  fourierNumberDimensionlessClosed : fourierNumberDimensionless
  fourierNumberBoundClosed : fourierNumberBound
  temperatureEvolutionClosed : temperatureEvolution

structure PecletNumberPackage (H : HeatTransferPhysicalModel) where
  pecletNumberDimensionless : Prop
  pecletNumberBound : Prop
  advectionDominance : Prop
  pecletNumberDimensionlessClosed : pecletNumberDimensionless
  pecletNumberBoundClosed : pecletNumberBound
  advectionDominanceClosed : advectionDominance

structure FourierPecletEvidence {H : HeatTransferPhysicalModel}
    (F : FourierNumberPackage H) (P : PecletNumberPackage H) where
  fourierClosed : F.fourierNumberDimensionless ∧ F.fourierNumberBound ∧ F.temperatureEvolution
  pecletClosed : P.pecletNumberDimensionless ∧ P.pecletNumberBound ∧ P.advectionDominance

def FourierPecletClosed {H : HeatTransferPhysicalModel}
    (F : FourierNumberPackage H) (P : PecletNumberPackage H) : Prop :=
  (F.fourierNumberDimensionless ∧ F.fourierNumberBound ∧ F.temperatureEvolution) ∧
  (P.pecletNumberDimensionless ∧ P.pecletNumberBound ∧ P.advectionDominance)

theorem fourier_peclet_closed_from_evidence {H : HeatTransferPhysicalModel}
    (F : FourierNumberPackage H) (P : PecletNumberPackage H)
    (E : FourierPecletEvidence F P) : FourierPecletClosed F P := by
  exact E.fourierClosed ∧ E.pecletClosed

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse