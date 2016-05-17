class CreateOptionalAccessories < ActiveRecord::Migration
  def change
    create_table :optional_accessories do |t|
      t.string :name
      t.string :series_id

      t.timestamps null: false
    end
  end
end
