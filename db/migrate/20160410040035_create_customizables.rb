class CreateCustomizables < ActiveRecord::Migration
  def change
    create_table :customizables do |t|
      t.string :name
      t.string :remark
      t.string :series_name

      t.timestamps null: false
    end
  end
end
