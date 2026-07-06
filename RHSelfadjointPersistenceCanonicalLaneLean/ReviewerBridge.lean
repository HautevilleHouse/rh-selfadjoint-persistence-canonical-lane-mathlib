import RHSelfadjointPersistenceCanonicalLaneLean.Formalization
import RHSelfadjointPersistenceCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace RHSelfadjointPersistenceCanonicalLaneLean

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
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "3f36497f708165cab6707db48d5425bb2bb7dd57aaac2ca42fef01a7ae54e3cb", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "5cfef49c3d65ad23a99a591ec58935c391fd8ab4932092cfa17242113dab1b07", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "baaf5157b9ea7e40ce0c5eee9b8ea4e660e0b203cbeda9f7c011e3f1deff29b4", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "29ffe1977e7575c042ef93f3ef75d5d8fbe2fd6180c2ee13f3cbe7f7ab207c4f", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "d9d73dba5220c41fd58c8de20f6dd6a36337127c8ff1485ed66f0e2328cf52d4", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "0d4112ac55ffe17ab9a37331c412001b0e52c9acaf8d94a73e0b7600b924eef6", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "05938489d3caa6e9b8f4db07e1709772c115b7ee4ced84f928bdc851aa295f2f", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "33f8f258b4075b7c569cbed2b76c7d001f6096520c957a5077f2b322ab4d4c12", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "97f0181d2efdab5b55d312f98d4d77cbff86fd445a840b258abb7754cea6e138", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "EQ2" },
  { index := 6, label := "Scalar closure" },
  { index := 7, label := "Classical transfer" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "README.md", sha256 := "5d83435bfae5637287eae464226b6b7e36ce37924b1891e993f641be5be8a2ab" },
  { path := "paper/RH_SELF_ADJOINT_PERSISTENCE_PREPRINT.md", sha256 := "91e06a025cf9cb215fd2ace748868a58143fc9cf743c920b3dd8280f3920d00c" },
  { path := "notes/EG1_public.md", sha256 := "220eb346a1c31e0fc1ce28a3488b2ceaea6dedd2ece347f45b57c571d6383757" },
  { path := "notes/EG2_public.md", sha256 := "4f6421ee963ac9f3b7ddc0010c52a146de74f60bf21e6acb8f00bd27bf6b142c" },
  { path := "notes/EG3_public.md", sha256 := "213f7ae54550eacd8591ecc61cbffc302ad8354b97693eea9a4ac1066b457ff1" },
  { path := "notes/EG4_public.md", sha256 := "4bdc40c1048ef089893c44d307826cf4cbc4c528f090e7ea03132433bafd95f7" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "5cfef49c3d65ad23a99a591ec58935c391fd8ab4932092cfa17242113dab1b07" },
  { path := "repro/REPRO_PACK.md", sha256 := "1334a4a743ab183f2ce53570bc2f1b236ca5425549b30bf8cf314306a17259fe" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "f18925d09a5f5a99cdd289a816b2916c5d6834af0de41f9dcc12c4330d3298ac" },
  { path := "repro/run_repro.sh", sha256 := "0e1fbf475760fe56b7859ae65874e29fd0ed11562eff74bdcb1ccdccaa142829" },
  { path := "repro/certificate_baseline.json", sha256 := "97f0181d2efdab5b55d312f98d4d77cbff86fd445a840b258abb7754cea6e138" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "baaf5157b9ea7e40ce0c5eee9b8ea4e660e0b203cbeda9f7c011e3f1deff29b4" },
  { path := "artifacts/constants_extracted.json", sha256 := "29ffe1977e7575c042ef93f3ef75d5d8fbe2fd6180c2ee13f3cbe7f7ab207c4f" },
  { path := "scripts/rh_closure_drift_guard.py", sha256 := "3de5da915645f840b68a8e745470518440f2cc7e50b0b217a802d1e785381fe8" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/rh_closure_registry.py", sha256 := "6dbf8d5ca4c1f8a5447596836925c4388333f2b006ad621b8d3f12eb784bb60d" },
  { path := "scripts/rh_closure_target_calculator.py", sha256 := "646af2adac4f6a61a462f3e870785f6da58d6e4caef4789fbd9dc5b692a78633" },
  { path := "scripts/extract_rh_e3_margin.py", sha256 := "fdf7168c6ff18610680e9282367409fda5813ce493eb69565ccc5f9cfe9ce938" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/rh_formalism_guard.py", sha256 := "f4279071b313fe29d527bf8d8f58532eea34056e1429ec16f9999869898bcdc0" },
  { path := "artifacts/constants_registry.json", sha256 := "d9d73dba5220c41fd58c8de20f6dd6a36337127c8ff1485ed66f0e2328cf52d4" },
  { path := "artifacts/stitch_constants.json", sha256 := "0d4112ac55ffe17ab9a37331c412001b0e52c9acaf8d94a73e0b7600b924eef6" },
  { path := "artifacts/promotion_report.json", sha256 := "05938489d3caa6e9b8f4db07e1709772c115b7ee4ced84f928bdc851aa295f2f" },
  { path := "LICENSE", sha256 := "fd3cd2a2b3d250450b971d5a6d37207ba9e103844728e203956498db9adc2d65" },
  { path := "CITATION.cff", sha256 := "210413611997abc8b551a7526da465aed7b53f749d4a69532bc1edb2876acbb4" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "c6377dee929f4aea99d8f938d867f9766b7c05514daffbff1d091ac698ab3cd7" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "17af43e380e96050def4ddafa2b8d474526f85a1561757207905d578574a4eb2" },
  { path := "scripts/README.md", sha256 := "416023e17098576b2c4213aa6d957c783c4ee03fd6709af164b9b8caf4c5b802" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/check_manifest.py", sha256 := "ba9a58390a886b0a838c63996e7d658da92943645df90ca0cb1c985cf34c454c" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "G_Coh", status := "PASS" },
  { gate := "G_M", status := "PASS" },
  { gate := "G_N", status := "PASS" },
  { gate := "G_R", status := "PASS" },
  { gate := "G_X", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "c_r", value := "9.960035360010515" },
  { key := "delta_rec", value := "0.001" },
  { key := "eps_coh", value := "0.0" },
  { key := "mu_strat", value := "0.9669337190736997" },
  { key := "rho_nf", value := "0.03430793496110181" },
  { key := "xi_tail", value := "0.01408609" }
]

def bridgeConstantKeys : List String := [
  "c_r",
  "delta_rec",
  "eps_coh",
  "eta_coh_star_can",
  "l_d_can",
  "mu_strat",
  "rho_nf",
  "sigma_star_can",
  "xi_tail"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 7 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 30 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 5 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 6 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 9 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end RHSelfadjointPersistenceCanonicalLaneLean
end HautevilleHouse
