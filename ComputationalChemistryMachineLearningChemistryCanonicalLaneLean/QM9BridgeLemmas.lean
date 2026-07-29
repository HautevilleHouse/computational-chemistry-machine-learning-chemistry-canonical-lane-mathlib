import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryMachineLearningChemistryCanonicalLaneLean

structure QM9Property where
  dipoleMoment : Float
  homoEnergy : Float
  lumoEnergy : Float
  gapEnergy : Float
  r2 : Float
  zpve : Float

def qm9BridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage

theorem qm9_bridge_from_admissible_class (A : AdmissibleClass) :
    qm9BridgeClosed A := by
  exact A.solverDecidesProjectedLanguage

end ComputationalChemistryMachineLearningChemistryCanonicalLaneLean
end HautevilleHouse