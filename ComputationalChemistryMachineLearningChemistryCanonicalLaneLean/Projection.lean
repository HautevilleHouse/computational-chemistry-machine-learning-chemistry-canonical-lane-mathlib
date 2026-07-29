import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryMachineLearningChemistryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def cheminformaticsProjection : Projection CheminformaticsEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem cheminformatics_projection_idempotent (x : CheminformaticsEndgameState) :
    cheminformaticsProjection.toFun (cheminformaticsProjection.toFun x) = cheminformaticsProjection.toFun x := by
  exact cheminformaticsProjection.idempotent x

end ComputationalChemistryMachineLearningChemistryCanonicalLaneLean
end HautevilleHouse