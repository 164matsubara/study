class CreateStandardSpecs < ActiveRecord::Migration
  def change
    create_table :standard_specs do |t|
      t.string :item
      t.string :content
      t.string :series_id

      t.timestamps null: false
    end
  end
end
