class AvailProperty < ActiveRecord::Base
  attr_accessible :available_units, :location, :name, :sold_out_units, :total_number_of_units, :unit_price
end
