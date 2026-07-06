import RHSelfadjointPersistenceCanonicalLaneLean.SourcePackage

/-!
# Source dependency model for `rh-selfadjoint-persistence-canonical-lane`

This module records the import and data-route surface used by the source
package/scripts before translation into Lean data.

It makes the source runtime dependency boundary explicit. The dependency boundary is internal to the Lean package as structural data.
-/


namespace HautevilleHouse
namespace RHSelfadjointPersistenceCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency := [
  { file := "scripts/check_manifest.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/check_manifest.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/check_manifest.py", kind := "import", module := "hashlib", name := "", alias := "", level := 0 },
  { file := "scripts/check_manifest.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/check_manifest.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/check_manifest.py", kind := "import", module := "sys", name := "", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "hashlib", name := "", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/extract_rh_e3_margin.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/extract_rh_e3_margin.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/extract_rh_e3_margin.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/extract_rh_e3_margin.py", kind := "from_import", module := "dataclasses", name := "asdict", alias := "", level := 0 },
  { file := "scripts/extract_rh_e3_margin.py", kind := "from_import", module := "dataclasses", name := "dataclass", alias := "", level := 0 },
  { file := "scripts/extract_rh_e3_margin.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/extract_rh_e3_margin.py", kind := "from_import", module := "typing", name := "Optional", alias := "", level := 0 },
  { file := "scripts/extract_rh_e3_margin.py", kind := "from_import", module := "rh_formalism_guard", name := "finish_guard", alias := "", level := 0 },
  { file := "scripts/extract_rh_e3_margin.py", kind := "from_import", module := "rh_formalism_guard", name := "start_guard", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "from_import", module := "extract_rh_e3_margin", name := "compute", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "from_import", module := "rh_formalism_guard", name := "finish_guard", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "from_import", module := "rh_formalism_guard", name := "start_guard", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "from_import", module := "rh_closure_registry", name := "default_registry", alias := "", level := 0 },
  { file := "scripts/rh_closure_drift_guard.py", kind := "from_import", module := "rh_closure_registry", name := "save_registry", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "from_import", module := "extract_rh_e3_margin", name := "compute", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "from_import", module := "rh_formalism_guard", name := "finish_guard", alias := "", level := 0 },
  { file := "scripts/rh_closure_registry.py", kind := "from_import", module := "rh_formalism_guard", name := "start_guard", alias := "", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "from_import", module := "rh_formalism_guard", name := "finish_guard", alias := "", level := 0 },
  { file := "scripts/rh_closure_target_calculator.py", kind := "from_import", module := "rh_formalism_guard", name := "start_guard", alias := "", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "import", module := "sys", name := "", alias := "", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "from_import", module := "dataclasses", name := "dataclass", alias := "", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/rh_formalism_guard.py", kind := "from_import", module := "typing", name := "Optional", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/update_manifest.py", kind := "import", module := "hashlib", name := "", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 }
]

def sourceRuntimeModules : List String := [
  "__future__.annotations",
  "argparse",
  "dataclasses.asdict",
  "dataclasses.dataclass",
  "datetime",
  "extract_rh_e3_margin.compute",
  "hashlib",
  "json",
  "math",
  "pathlib.Path",
  "rh_closure_registry.default_registry",
  "rh_closure_registry.save_registry",
  "rh_formalism_guard.finish_guard",
  "rh_formalism_guard.start_guard",
  "sys",
  "typing.Any",
  "typing.Dict",
  "typing.Optional"
]

def sourcePathDependencies : List SourcePathDependency := [
  { file := "scripts/check_manifest.py", name := "DEFAULT_MANIFEST", path := "repro/repro_manifest.json", role := "repro", line := 14 },
  { file := "scripts/extract_constants.py", name := "DEFAULT_INPUTS", path := "artifacts/constants_extraction_inputs.json", role := "artifact", line := 17 },
  { file := "scripts/extract_constants.py", name := "DEFAULT_OUT", path := "artifacts/constants_extracted.json", role := "artifact", line := 18 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_EXTRACTED", path := "artifacts/constants_extracted.json", role := "artifact", line := 16 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_REGISTRY", path := "artifacts/constants_registry.json", role := "artifact", line := 17 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_STITCH", path := "artifacts/stitch_constants.json", role := "artifact", line := 18 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_REPORT", path := "artifacts/promotion_report.json", role := "artifact", line := 19 },
  { file := "scripts/rh_closure_drift_guard.py", name := "DEFAULT_ARTIFACT_DIR", path := ".tmp/rh_closure", role := "project_route", line := 27 },
  { file := "scripts/rh_closure_drift_guard.py", name := "LEGACY_REGISTRY_REL", path := ".tmp/rh_closure_constants_registry.json", role := "project_route", line := 32 },
  { file := "scripts/rh_closure_registry.py", name := "DEFAULT_ARTIFACT_DIR", path := ".tmp/rh_closure", role := "project_route", line := 23 },
  { file := "scripts/rh_closure_registry.py", name := "LEGACY_REGISTRY_REL", path := ".tmp/rh_closure_constants_registry.json", role := "project_route", line := 26 },
  { file := "scripts/rh_closure_target_calculator.py", name := "DEFAULT_REGISTRY", path := ".tmp/rh_closure/constants_registry.json", role := "project_route", line := 27 },
  { file := "scripts/rh_closure_target_calculator.py", name := "DEFAULT_OUT", path := ".tmp/rh_closure/targets.json", role := "project_route", line := 28 },
  { file := "scripts/rh_closure_target_calculator.py", name := "DEFAULT_OUT_MD", path := ".tmp/rh_closure/targets.md", role := "project_route", line := 29 },
  { file := "scripts/rh_formalism_guard.py", name := "DEFAULT_REGISTRY_REL", path := ".tmp/rh_closure/constants_registry.json", role := "project_route", line := 30 },
  { file := "scripts/rh_formalism_guard.py", name := "DEFAULT_STITCH_REL", path := ".tmp/rh_closure/stitch_constants.json", role := "project_route", line := 31 },
  { file := "scripts/update_manifest.py", name := "DEFAULT_MANIFEST", path := "repro/repro_manifest.json", role := "repro", line := 16 }
]

def sourceImportDependencyCount : Nat := 81
def sourceRuntimeModuleCount : Nat := 18
def sourcePathDependencyCount : Nat := 17

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 81 := by
  rfl

theorem source_runtime_module_count_checked : sourceRuntimeModules.length = 18 := by
  rfl

theorem source_path_dependency_count_checked : sourcePathDependencies.length = 17 := by
  rfl

end RHSelfadjointPersistenceCanonicalLaneLean
end HautevilleHouse
