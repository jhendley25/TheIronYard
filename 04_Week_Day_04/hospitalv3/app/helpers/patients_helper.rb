module PatientsHelper
def workflow_status(institution,patient)
    if patient.workflow_state == 'waiting'
      a = link_to " Go To Doctor |", doctor_institution_patient_path(institution,patient), method: :patch
      a += link_to " Go To Xray |", xray_institution_patient_path(institution,patient), method: :patch
      a += link_to " Go To Surgery |", surgery_institution_patient_path(institution,patient), method: :patch
      a += link_to " Leave Hospital ", leaving_institution_patient_path(institution,patient), method: :patch
    elsif patient.workflow_state == 'doctor'
      b = link_to " Go To Xray |", xray_institution_patient_path(institution,patient), method: :patch
      b += link_to " Go To Surgery |", surgery_institution_patient_path(institution,patient), method: :patch
      b += link_to " Go To Billing ", billpay_institution_patient_path(institution,patient), method: :patch
    elsif patient.workflow_state == 'xray'
      c = link_to " Go To Surgery |", surgery_institution_patient_path(institution,patient), method: :patch
      c += link_to " Go To Doctor |", doctor_institution_patient_path(institution,patient), method: :patch
      c += link_to " Go To Billing", billpay_institution_patient_path(institution,patient), method: :patch
    elsif patient.workflow_state == 'surgery'
      d = link_to " Go To Doctor |", doctor_institution_patient_path(institution,patient), method: :patch
      d += link_to "Go To Xray |", xray_institution_patient_path(institution,patient), method: :patch
      d += link_to "Go To Billing", billpay_institution_patient_path(institution,patient), method: :patch
    elsif patient.workflow_state == 'billpay'
      e = link_to "Go Home ", leaving_institution_patient_path(institution,patient), method: :patch
    elsif patient.workflow_state == 'home'
      f = link_to "Go to Discharge ", postop_institution_patient_path(institution,patient), method: :patch
    end
  end
end