class CreateRestroFoods < ActiveRecord::Migration
  def change
    create_table :restro_foods do |t|
      t.integer :restro_id
      t.integer :food_id

      t.timestamps
    end
  end
end
