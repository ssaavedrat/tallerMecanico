class CreateReparations < ActiveRecord::Migration[7.0]
  def change
    create_table :reparations do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.integer :status, default: 0
      t.datetime :start_time
      t.datetime :end_time
      t.text :observation

      t.timestamps
    end
  end
end
