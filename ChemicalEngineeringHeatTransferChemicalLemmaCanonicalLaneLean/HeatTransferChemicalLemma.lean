import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatTransferCoefficientPackage where
  fluidProperties : Type
  thermalConductivity : Float
  specificHeat : Float
  viscosity : Float
  reynoldsNumber : Float
  prandtlNumber : Float
  nusseltNumber : Float
  heatTransferCoefficient : Float
  convectionCorrelationClosed : Prop
  fourierNumber : Float
  biotNumber : Float

structure HeatTransferCoefficientEvidence (H : HeatTransferCoefficientPackage) where
  convectionCorrelationClosed : H.convectionCorrelationClosed

structure ChemicalReactionKineticsPackage where
  reactionRateConstant : Float
  activationEnergy : Float
  preExponentialFactor : Float
  arrheniusEquationClosed : Prop
  equilibriumConstant : Float
  gibbsFreeEnergy : Float
  enthalpyChange : Float
  entropyChange : Float

structure ChemicalReactionKineticsEvidence (C : ChemicalReactionKineticsPackage) where
  arrheniusEquationClosed : C.arrheniusEquationClosed

structure HeatTransferChemicalLemmaPackage where
  heatCoefficient : HeatTransferCoefficientPackage
  reactionKinetics : ChemicalReactionKineticsPackage
  couplingParameter : Float
  heatTransferLimitedRegime : Prop
  reactionLimitedRegime : Prop
  massBalanceEquationClosed : Prop
  energyBalanceEquationClosed : Prop
  overallRateExpressionClosed : Prop

structure HeatTransferChemicalLemmaEvidence (H : HeatTransferChemicalLemmaPackage) where
  heatTransferLimitedRegimeClosed : H.heatTransferLimitedRegime
  reactionLimitedRegimeClosed : H.reactionLimitedRegime
  massBalanceEquationClosed : H.massBalanceEquationClosed
  energyBalanceEquationClosed : H.energyBalanceEquationClosed
  overallRateExpressionClosed : H.overallRateExpressionClosed

def HeatTransferChemicalLemmaClosed (H : HeatTransferChemicalLemmaPackage) : Prop :=
  H.heatTransferLimitedRegime ∧ H.reactionLimitedRegime ∧
  H.massBalanceEquationClosed ∧ H.energyBalanceEquationClosed ∧
  H.overallRateExpressionClosed

theorem heat_transfer_chemical_lemma_closed_from_evidence
    (H : HeatTransferChemicalLemmaPackage)
    (E : HeatTransferChemicalLemmaEvidence H) :
    HeatTransferChemicalLemmaClosed H := by
  exact And.intro E.heatTransferLimitedRegimeClosed
    (And.intro E.reactionLimitedRegimeClosed
      (And.intro E.massBalanceEquationClosed
        (And.intro E.energyBalanceEquationClosed
          E.overallRateExpressionClosed)))

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse
