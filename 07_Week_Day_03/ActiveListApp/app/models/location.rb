class Location < ActiveRecord::Base
  has_many :item_location_join_table
  has_many :items, through: :item_location_join_table
end
