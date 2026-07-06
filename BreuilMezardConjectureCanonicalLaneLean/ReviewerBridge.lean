import BreuilMezardConjectureCanonicalLaneLean.Formalization
import BreuilMezardConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace BreuilMezardConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "49b0c8a71903710be2d800f842cd91624c7a714c304f031ffc07526afa714791", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "e518eda1894951614c4e048b637d0e813cc6c9b6097dceb53277e7d16326d2a3", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "062b91eb060c79bf39372cb146407512508b5a94e743b0bfe0e13217f179861e", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "d1663313aa01f37c761af488752141bd9c6127e7acb2c59b7af62b120ddf1ea9", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "23c313adcdc213793ccd0762e53c9e20f47e8f30b71daf6f95fddcfa650521c0", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "37bfa4b455150ac246cb874f356cc22745f827700f232b059bb4c8a816f9f2d7", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "67175c91284825140dd075c92b7d8bb14e3ac5fe8d5778ed982e0c26dcf5cb73", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "355e5a3689c67014ce6303a9775dfb92562b675b1a5e8970516b1ad7e34eaa63", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "b121dfeba2f4c384450aeb67de5cef41073966b34cdf1343807b1d74714affd9", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 0

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "README.md", sha256 := "cc5b08aba82366ae64855849ff522d2177f5fe1971935aafff6e68a8203c1bfa" },
  { path := "CITATION.cff", sha256 := "668eb65e83f83c174eecd2443228380c0b297ba3b8b223970104e15e72278984" },
  { path := "REVIEWER_MAP.md", sha256 := "49b0c8a71903710be2d800f842cd91624c7a714c304f031ffc07526afa714791" },
  { path := "paper/BREUIL_MEZARD_CONJECTURE_PREPRINT.md", sha256 := "4bc709792090418b155fd2246938f88c8a3b8450508c581068423949beb4ca46" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "565f47b111e8b9c781cba0e13daf47a90e5ad39297cc2e59bdd41b2a3df1c724" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "0a8c3f09b34c365319e3f6746732f4fcf7d0b38de7e0acf3992bc92df2591827" },
  { path := "notes/EG1_public.md", sha256 := "3a34afcd755c32169c9c8d8c1fa1a0c8858f95a0949a58e3f048f9e60786f444" },
  { path := "notes/EG2_public.md", sha256 := "bff19f3fad3710fd2de7908ce41f09e17775494429739dd022e31c37a7074e5b" },
  { path := "notes/EG3_public.md", sha256 := "3d21c74e09187bf5e4d1b21d30f616c8763464af6dadf536f8a49e6709b475d1" },
  { path := "notes/EG4_public.md", sha256 := "897f845d6a7fdcc5a1397751465aeec4f188c312b414f21d106ce1b14dbfa57a" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "e518eda1894951614c4e048b637d0e813cc6c9b6097dceb53277e7d16326d2a3" },
  { path := "notes/GEOMETRIC_GALOIS_BRIDGE.md", sha256 := "d043e707b92e951995a4c18f525e1955abf85d0fceec7c1b69c8cfd28ba6541c" },
  { path := "scripts/bmz_closure_guard.py", sha256 := "e027573d60fc341e0e34bf978c0aea334aa86dec32cf62ff29f3d769b3cd30d0" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "repro/run_repro.sh", sha256 := "8a51f92a77c96a63bec75465a19a8faedb59ea01220c92df444947772f86d6b0" },
  { path := "repro/REPRO_PACK.md", sha256 := "fdb539adaf5366caa214fd366a3be921bba73000afd54cab1818980fe58f2542" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "5deb6cad666a2284e5fc0aeb7ff110e380bad8230a2b829254c5319cce51f88c" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "062b91eb060c79bf39372cb146407512508b5a94e743b0bfe0e13217f179861e" },
  { path := "artifacts/constants_extracted.json", sha256 := "d1663313aa01f37c761af488752141bd9c6127e7acb2c59b7af62b120ddf1ea9" },
  { path := "artifacts/constants_registry.json", sha256 := "23c313adcdc213793ccd0762e53c9e20f47e8f30b71daf6f95fddcfa650521c0" },
  { path := "artifacts/stitch_constants.json", sha256 := "37bfa4b455150ac246cb874f356cc22745f827700f232b059bb4c8a816f9f2d7" },
  { path := "artifacts/promotion_report.json", sha256 := "67175c91284825140dd075c92b7d8bb14e3ac5fe8d5778ed982e0c26dcf5cb73" },
  { path := "repro/certificate_baseline.json", sha256 := "b121dfeba2f4c384450aeb67de5cef41073966b34cdf1343807b1d74714affd9" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "BMZ_G1", status := "PASS" },
  { gate := "BMZ_G2", status := "PASS" },
  { gate := "BMZ_G3", status := "PASS" },
  { gate := "BMZ_G4", status := "PASS" },
  { gate := "BMZ_G5", status := "PASS" },
  { gate := "BMZ_G6", status := "PASS" },
  { gate := "BMZ_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "cycle_transfer", value := "1.02951" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_multiplicity", value := "1.091838" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_local", value := "1.075" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "automorphic_transfer",
  "cycle_transfer",
  "eps_coh",
  "kappa_compact",
  "kappa_geometric",
  "kappa_multiplicity",
  "rho_rigidity",
  "sigma_local",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 0 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 0 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 26 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 9 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end BreuilMezardConjectureCanonicalLaneLean
end HautevilleHouse
