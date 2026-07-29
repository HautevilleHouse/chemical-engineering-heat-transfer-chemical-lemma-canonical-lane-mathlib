import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure PrimitiveHeatExchangerGeometry where
  tubeLength : ℝ
  tubeDiameter : ℝ
  tubeWallThickness : ℝ
  baffleSpacing : ℝ
  shellDiameter : ℝ
  numberOfTubes : ℕ
  tubeLayout : String
  flowArrangement : String

defaultInstance : PrimitiveHeatExchangerGeometry where
  tubeLength := 6.0
  tubeDiameter := 0.02
  tubeWallThickness := 0.002
  baffleSpacing := 1.0
  shellDiameter := 0.5
  numberOfTubes := 100
  tubeLayout := "triangular"
  flowArrangement := "countercurrent"

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse