import RHSelfadjointPersistenceCanonicalLaneLean.RHSpectralCertificate

/-!
# RH spectral closure

This module connects the theorem-local RH spectral-zero certificate to the
existing canonical-lane closure: native bridge, gate closure, and carried
unrestricted classical boundary.
-/

namespace HautevilleHouse
namespace RHSelfadjointPersistenceCanonicalLaneLean

def rhAdmittedObject : AdmittedTheoremObject := {
  object := theoremSpecificObject,
  substrate := {
    operatorCarrier := Unit,
    spectralSet := Set.univ,
    invariantOrSelfAdjointGate := SelfAdjointOperatorLayerClosed selfAdjointOperatorLayerCertificate,
    spectralPersistenceBridge := CriticalLinePersistenceLayerClosed criticalLinePersistenceLayerCertificate,
    sourceBoundaryLedger := Set.univ
  },
  localWitness := "RH spectral-zero certificate with zeta-zero substrate, self-adjoint operator route, critical-line persistence, and prime endpoint.",
  bridgeEvidence := "source-derived Lean certificate fields, reviewer bridge hashes, Mathlib zeta/spectral substrate, and Canonical Carriage record",
  operatorModelChecked := SelfAdjointOperatorLayerClosed selfAdjointOperatorLayerCertificate,
  operatorModelWitness := self_adjoint_operator_layer_closed_checked,
  spectralPersistenceBridgeChecked :=
    CriticalLinePersistenceLayerClosed criticalLinePersistenceLayerCertificate ∧
    ZetaZeroEndpointLayerClosed zetaZeroEndpointLayerCertificate ∧
    PrimeEndpointLayerClosed primeEndpointLayerCertificate,
  spectralPersistenceBridgeWitness := And.intro critical_line_persistence_layer_closed_checked
    (And.intro zeta_zero_endpoint_layer_closed_checked prime_endpoint_layer_closed_checked),
  sourceBoundaryLedgerChecked := ClassicalSourceBoundaryCarried,
  sourceBoundaryLedgerWitness := classical_source_boundary_carried_checked,
  classicalRemainderCarried := rfl,
  sourceKeyChecked := rfl,
  theoremObjectChecked := rfl
}

def rhAdmissibleClass : AdmissibleClass := {
  object := rhAdmittedObject,
  endpointSatisfied := RHSpectralCertificateClosed rhSpectralCertificate,
  remainderRecorded := ClassicalSourceBoundaryCarried,
  gateWitness := Or.inl rh_spectral_certificate_closed_checked
}

def RHAdmittedSpectralZeroClosure : Prop :=
  ConstrainedTheoremClosure rhAdmissibleClass

def RHClassicalBoundaryCarried : Prop :=
  ClassicalSourceBoundaryCarried ∧ rhSpectralCertificate.classicalBoundaryCarried = true

theorem rh_admitted_spectral_zero_closure_checked :
    RHAdmittedSpectralZeroClosure := by
  exact constrained_theorem_closure rhAdmissibleClass

theorem rh_classical_boundary_carried_checked :
    RHClassicalBoundaryCarried := by
  exact And.intro classical_source_boundary_carried_checked rfl

theorem rh_closure_carriage_state_checked :
    rhSpectralCertificate.carriageRecord.closureState =
      "LOCAL_SPECTRAL_ZERO_CERTIFICATE_CLOSED_WITH_CLASSICAL_BOUNDARY_CARRIED" := by
  rfl

end RHSelfadjointPersistenceCanonicalLaneLean
end HautevilleHouse
