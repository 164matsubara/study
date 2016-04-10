class CreateOptionalAccessories < ActiveRecord::Migration
  def change
    create_table :optional_accessories do |t|
      t.string :name
      t.string :series_name

      t.timestamps null: false
    end
  end
end
