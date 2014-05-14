module SubmissionsHelper

def workflow_status(location,cohort,assignment,submission)
    if user.workflow_status == 'new_submission'
      a = link_to "Reviewing", reviewing_location_cohort_assignment_submission(location,cohort,assignment,submission), method: :patch
      a += link_to "Complete", complete_location_cohort_assignment_submission(location,cohort,assignment,submission), method: :patch
      a += link_to "Incomplete", incomplete_location_cohort_assignment_submission(location,cohort,assignment,submission), method: :patch
    elsif user.workflow_status == 'reviewing'
      b = link_to "Complete", complete_location_cohort_assignment_submission(location,cohort,assignment,submission), method: :patch
      b += link_to "Incomplete", incomplete_location_cohort_assignment_submission(location,cohort,assignment,submission), method: :patch
    elsif user.workflow_status == 'incomplete'
      c = link_to "Reviewing", reviewing_location_cohort_assignment_submission(location,cohort,assignment,submission), method: :patch
      c += link_to "Complete", complete_location_cohort_assignment_submission(location,cohort,assignment,submission), method: :patch
    end
  end
end