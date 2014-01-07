class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :comment
      t.integer :rating
      t.integer :restro_id
      t.integer :user_id

      t.timestamps
    end
  end
end
