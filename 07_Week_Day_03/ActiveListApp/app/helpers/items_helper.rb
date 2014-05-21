module ItemsHelper
  def display_availability(item)
    if item.workflow_state == 'in_que'
      'Just Added'
    elsif item.workflow_state == 'bought'
      'Item Bought'
    elsif item.workflow_state == 'not_needed'
      'Item Not Needed'
    end
  end
  def availability_class(item)
    if item.workflow_state == 'in_que'
      'success'
    elsif item.workflow_state == 'bought'
      'info'
    else item.workflow_state == 'not_needed'
      'warning'
    end
  end
end
