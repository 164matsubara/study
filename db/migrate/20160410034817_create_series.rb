class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :series_name
      t.string :product_name
      t.string :photo
      t.integer :chart_num
      t.string :chart1
      t.string :chart2
      t.string :chart3
      t.string :chart4
      t.string :chart5
      t.string :chart6
      t.string :chart7
      t.integer :structure_num
      t.string :structure1
      t.string :structure2
      t.string :structure3
      t.string :structure4
      t.string :docu50link
      t.string :docu60link
      t.string :product_categoty

      t.timestamps null: false
    end
  end
end
