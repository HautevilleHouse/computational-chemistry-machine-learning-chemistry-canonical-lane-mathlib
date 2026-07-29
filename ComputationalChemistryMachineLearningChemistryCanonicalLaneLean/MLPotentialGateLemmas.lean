import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryMachineLearningChemistryCanonicalLaneLean

structure MLPotentialModel where
  architecture : String
  trainParams : String
  inferenceSpeed : Float

def mlPotentialGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem ml_potential_gate_from_admissible_class (A : AdmissibleClass) :
    mlPotentialGateClosed A := by
  exact A.gateWitness

end ComputationalChemistryMachineLearningChemistryCanonicalLaneLean
end HautevilleHouse