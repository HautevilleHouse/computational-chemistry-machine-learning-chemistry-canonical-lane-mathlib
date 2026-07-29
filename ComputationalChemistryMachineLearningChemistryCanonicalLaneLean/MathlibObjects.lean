import canonicalLaneMathlib.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalChemistryMachineLearningChemistryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev BitString := List Bool
abbrev Language := Set BitString

structure DecisionProcedure where
  accepts : BitString -> Bool

structure WitnessRelation where
  accepts : BitString -> BitString -> Prop

structure PolynomialCertificateBound where
  degree : Nat

structure CheminformaticsClassicalObject where
  language : Language
  witnessRelation : WitnessRelation
  bound : PolynomialCertificateBound

structure CheminformaticsAdmittedObject where
  classicalObject : CheminformaticsClassicalObject
  projectedLanguage : Language
  solver : DecisionProcedure

structure CheminformaticsEndgameState where
  admittedObject : CheminformaticsAdmittedObject

def Decides (M : DecisionProcedure) (L : Language) : Prop :=
  forall x : BitString, M.accepts x = true ↔ x ∈ L

end ComputationalChemistryMachineLearningChemistryCanonicalLaneLean
end HautevilleHouse