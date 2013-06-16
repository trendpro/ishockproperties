class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :status
      t.integer :price
      t.references :user

      t.timestamps
    end
    add_index :properties, :user_id
  end
end
