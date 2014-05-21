class Item < ActiveRecord::Base
  has_many :item_location_join_table
  has_many :locations, through: :item_location_join_table

  URGENCY_LEVEL = [
    "Need Now",
    "Getting Low"
  ]

  WHERES_THE_ITEM = [
    "Item in Que", 
    "Item Bought",
    "Item Not Needed"
  ]

  include Workflow
  workflow do
    state :in_que do
      event :go_to_bought, transitions_to: :bought
      event :go_to_not_needed, transitions_to: :not_needed
    end
    state :go_to_not_needed do
      event :go_to_not_needed, transitions_to: :not_needed
    end
  end
end
