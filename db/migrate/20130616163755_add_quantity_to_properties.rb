class AddQuantityToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :quantity, :integer
  end
end
