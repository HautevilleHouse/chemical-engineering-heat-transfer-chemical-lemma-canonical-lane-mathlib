import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

def ConstrainedHeatTransferClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_heat_transfer_endgame (A : AdmissibleClass) :
    ConstrainedHeatTransferClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
