class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
      t.string :ref
      t.string :part_name
      t.string :material
      t.string :remark
      t.integer :num
      t.integer :variation
      t.string :series_id

      t.timestamps null: false
    end
  end
end
