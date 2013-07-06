class CreateAvailProperties < ActiveRecord::Migration
  def change
    create_table :avail_properties do |t|
      t.string :name
      t.string :unit_price
      t.string :total_number_of_units
      t.string :sold_out_units
      t.string :available_units
      t.string :location

      t.timestamps
    end
  end
end
