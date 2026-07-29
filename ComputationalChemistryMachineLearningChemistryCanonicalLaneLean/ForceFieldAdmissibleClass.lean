import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryMachineLearningChemistryCanonicalLaneLean

structure ForceFieldParameters where
  bondEquilibrium : Float
  bondForceConstant : Float
  angleEquilibrium : Float
  angleForceConstant : Float
  dihedralAmplitude : Float
  nonbondedEpsilon : Float
  nonbondedSigma : Float

definition ForceFieldAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem force_field_admissible_closure (A : AdmissibleClass) :
    ForceFieldAdmissibleClass A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalChemistryMachineLearningChemistryCanonicalLaneLean
end HautevilleHouse