module PatientsHelper
  def workflow_status(patient)
    if patient.workflow_state == 'waiting'
      a = link_to " Go To Doctor", doctor_patient_path(patient), method: :patch
      a += ' | '
      a += link_to " Go To Xray |", xray_patient_path(patient), method: :patch
      a += link_to " Go To Surgery |", surgery_patient_path(patient), method: :patch
      a += link_to " Leave Hospital ", leaving_patient_path(patient), method: :patch  
    elsif patient.workflow_state == 'doctor'
      b =link_to " Go To Xray |", xray_patient_path(patient), method: :patch
      b +=link_to " Go To Surgery |", surgery_patient_path(patient), method: :patch
      b +=link_to " Go To Billing ", billpay_patient_path(patient), method: :patch  
    elsif patient.workflow_state == 'xray'
      c = link_to " Go To Surgery |", surgery_patient_path(patient), method: :patch
      c += link_to " Go To Doctor |", doctor_patient_path(patient), method: :patch
      c += link_to " Go To Billing |", billpay_patient_path(patient), method: :patch  
    elsif patient.workflow_state == 'surgery'
      d =link_to " Go To Doctor |", doctor_patient_path(patient), method: :patch
      d +=link_to " Go To Xray |", xray_patient_path(patient), method: :patch
      d +=link_to " Go To Billing", billpay_patient_path(patient), method: :patch  
    elsif patient.workflow_state == 'billpay'
    link_to "Go Home ", leaving_patient_path(patient), method: :patch 
    end
  end
end