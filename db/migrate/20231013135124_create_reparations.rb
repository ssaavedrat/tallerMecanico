class CreateReparations < ActiveRecord::Migration[7.0]
  def change
    create_table :reparations do |t|
      t.integer :status, default: 0
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.text :observations

      t.timestamps
    end
  end
end
