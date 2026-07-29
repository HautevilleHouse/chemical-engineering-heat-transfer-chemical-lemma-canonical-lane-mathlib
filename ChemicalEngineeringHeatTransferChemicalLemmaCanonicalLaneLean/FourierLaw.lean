import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure FourierLawPackage where
  heatFlux : Type u
  temperatureGradient : Type v
  thermalConductivityTensor : Type w
  constitutiveRelation : Prop
  linearResponse : Prop
  isotropyAssumption : Prop

structure FourierLawEvidence (F : FourierLawPackage) where
  constitutiveRelationClosed : F.constitutiveRelation
  linearResponseClosed : F.linearResponse
  isotropyAssumptionClosed : F.isotropyAssumption

def FourierLawClosed (F : FourierLawPackage) : Prop :=
  F.constitutiveRelation ∧ F.linearResponse ∧ F.isotropyAssumption

theorem fourier_law_closed_from_evidence (F : FourierLawPackage)
    (E : FourierLawEvidence F) : FourierLawClosed F := by
  exact And.intro E.constitutiveRelationClosed (And.intro E.linearResponseClosed E.isotropyAssumptionClosed)

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
