class CreateRestroAddresses < ActiveRecord::Migration
  def change
    create_table :restro_addresses do |t|
      t.string :addr
      t.integer :restro_id
      t.integer :location_id
      t.integer :city_id

      t.timestamps
    end
  end
end
