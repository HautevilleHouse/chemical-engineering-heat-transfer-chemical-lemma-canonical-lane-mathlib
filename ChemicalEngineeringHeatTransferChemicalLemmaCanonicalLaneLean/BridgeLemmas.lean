import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HeatExchangerWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse