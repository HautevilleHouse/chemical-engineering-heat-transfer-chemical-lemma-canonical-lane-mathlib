import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChemicalHeatTransferAdmittedObject where
  temperatureField : Type
  boundaryConditions : Prop
  initialDataDefined : Prop
  heatTransferModelValid : Prop
  conclusion : heatTransferModelValid

structure ChemicalHeatTransferEndgameState where
  object : ChemicalHeatTransferAdmittedObject

def ChemicalHeatTransferWitnessClosed (O : ChemicalHeatTransferAdmittedObject) : Prop :=
  O.heatTransferModelValid

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
