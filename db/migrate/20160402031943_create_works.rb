class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :bldg_name
      t.string :bldg_picture
      t.string :bldg_place

      t.timestamps null: false
    end
  end
end
