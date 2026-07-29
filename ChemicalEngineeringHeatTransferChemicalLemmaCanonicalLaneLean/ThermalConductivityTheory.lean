import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure ThermalConductivityTheoryPackage where
  phononTransport : Prop
  electronicContribution : Prop
  temperatureDependence : Prop
  effectiveMediumTheory : Prop
  anisotropyModel : Prop

structure ThermalConductivityTheoryEvidence (T : ThermalConductivityTheoryPackage) where
  phononTransportClosed : T.phononTransport
  electronicContributionClosed : T.electronicContribution
  temperatureDependenceClosed : T.temperatureDependence
  effectiveMediumTheoryClosed : T.effectiveMediumTheory
  anisotropyModelClosed : T.anisotropyModel

def ThermalConductivityTheoryClosed (T : ThermalConductivityTheoryPackage) : Prop :=
  T.phononTransport ∧ T.electronicContribution ∧ T.temperatureDependence ∧
  T.effectiveMediumTheory ∧ T.anisotropyModel

theorem thermal_conductivity_theory_closed_from_evidence
    (T : ThermalConductivityTheoryPackage)
    (E : ThermalConductivityTheoryEvidence T) : ThermalConductivityTheoryClosed T := by
  exact And.intro E.phononTransportClosed
    (And.intro E.electronicContributionClosed
      (And.intro E.temperatureDependenceClosed
        (And.intro E.effectiveMediumTheoryClosed E.anisotropyModelClosed)))

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
