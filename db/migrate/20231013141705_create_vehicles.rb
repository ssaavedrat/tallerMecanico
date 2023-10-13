class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :plate
      t.string :brand
      t.string :model
      t.integer :year
      t.string :color
      t.text :car_issue

      t.timestamps
    end
  end
end
