class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :feature
      t.string :series_name

      t.timestamps null: false
    end
  end
end
