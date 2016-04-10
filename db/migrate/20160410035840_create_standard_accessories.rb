class CreateStandardAccessories < ActiveRecord::Migration
  def change
    create_table :standard_accessories do |t|
      t.string :name
      t.string :remark
      t.string :series_name

      t.timestamps null: false
    end
  end
end
