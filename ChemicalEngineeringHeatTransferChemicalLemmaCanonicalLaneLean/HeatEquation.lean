import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean.HeatTransferPhysicalModel
import HautevilleHouse.ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean.FourierNumberPecletNumber

namespace HautevilleHouse
namespace ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean

structure HeatEquationPackage {H : HeatTransferPhysicalModel}
    (F : FourierNumberPackage H) (P : PecletNumberPackage H) where
  heatEquationForm : Prop
  initialCondition : Prop
  boundaryCondition : Prop
  uniquenessSolution : Prop
  heatEquationFormClosed : heatEquationForm
  initialConditionClosed : initialCondition
  boundaryConditionClosed : boundaryCondition
  uniquenessSolutionClosed : uniquenessSolution

structure HeatEquationEvidence {H : HeatTransferPhysicalModel}
    {F : FourierNumberPackage H} {P : PecletNumberPackage H}
    (Eq : HeatEquationPackage F P) where
  heatEquationFormClosed : Eq.heatEquationForm
  initialConditionClosed : Eq.initialCondition
  boundaryConditionClosed : Eq.boundaryCondition
  uniquenessSolutionClosed : Eq.uniquenessSolution

def HeatEquationClosed {H : HeatTransferPhysicalModel}
    {F : FourierNumberPackage H} {P : PecletNumberPackage H}
    (Eq : HeatEquationPackage F P) : Prop :=
  Eq.heatEquationForm ∧ Eq.initialCondition ∧
  Eq.boundaryCondition ∧ Eq.uniquenessSolution

theorem heat_equation_closed_from_evidence {H : HeatTransferPhysicalModel}
    {F : FourierNumberPackage H} {P : PecletNumberPackage H}
    (Eq : HeatEquationPackage F P) (E : HeatEquationEvidence Eq) :
    HeatEquationClosed Eq := by
  exact And.intro E.heatEquationFormClosed
    (And.intro E.initialConditionClosed
      (And.intro E.boundaryConditionClosed E.uniquenessSolutionClosed))

end ChemicalEngineeringHeatTransferChemicalLemmaCanonicalLaneLean
end HautevilleHouse