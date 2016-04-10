class CreateStandardSpecs < ActiveRecord::Migration
  def change
    create_table :standard_specs do |t|
      t.string :item
      t.string :content
      t.string :series_name

      t.timestamps null: false
    end
  end
end
