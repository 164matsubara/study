class CreateSpecSheets < ActiveRecord::Migration
  def change
    create_table :spec_sheets do |t|
      t.integer :s_bore
      t.integer :d_bore
      t.integer :ref
      t.string :model_name
      t.float :kW
      t.float :Q1
      t.float :H1
      t.float :Q2
      t.float :H2
      t.float :Q3
      t.float :H3
      t.integer :stage
      t.integer :rotary
      t.float :starting_pressure
      t.string :adjustable_pressure_range
      t.float :accumulated_pressure
      t.string :noise
      t.float :power_factor
      t.float :max_pressure
      t.string :Hz
      t.string :series_id

      t.timestamps null: false
    end
  end
end
