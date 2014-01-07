class CreateRestros < ActiveRecord::Migration
  def change
    create_table :restros do |t|
      t.string :name

      t.timestamps
    end
  end
end
