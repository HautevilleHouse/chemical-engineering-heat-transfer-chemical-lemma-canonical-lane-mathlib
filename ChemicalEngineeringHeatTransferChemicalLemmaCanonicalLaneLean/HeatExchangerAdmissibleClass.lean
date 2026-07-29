import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatExchangerAdmittedObject where
  geometry : PrimitiveHeatExchangerGeometry
  correlations : HeatTransferCorrelations
  boundaryLayer : FourierBoundaryLayer
  overallHeatTransferCoefficient : ℝ
  heatTransferRate : ℝ
  effectiveness : ℝ
  conclusion : effectiveness ≥ 0 ∧ heatTransferRate ≥ 0

def HeatExchangerWitnessClosed (O : HeatExchangerAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : HeatExchangerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HeatExchangerWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse