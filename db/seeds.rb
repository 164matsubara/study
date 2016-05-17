# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach('db/MODEL_CSV/Works_MODEL.csv') do |row|
    Work.create(:bldg_name => row[0], 
                :bldg_picture => File.open("#{Rails.root}/#{row[1]}"), 
                :bldg_place => row[2])
end

require 'csv'

CSV.foreach('db/MODEL_CSV/Series_MODEL.csv') do |row|
    Series.create(:name => row[0],
                  :product_name => row[1],
                  :photo => File.open("#{Rails.root}/#{row[2]}"),
                  :chart_num => row[3],
                  :chart1 => File.open("#{Rails.root}/#{row[4]}"),
                  :chart2 => File.open("#{Rails.root}/#{row[5]}"),
                  :chart3 => File.open("#{Rails.root}/#{row[6]}"),
                  :chart4 => File.open("#{Rails.root}/#{row[7]}"),
                  :chart5 => File.open("#{Rails.root}/#{row[8]}"),
                  :chart6 => File.open("#{Rails.root}/#{row[9]}"),
                  :chart7 => File.open("#{Rails.root}/#{row[10]}"),
                  :structure_num => row[11],
                  :structure1 => File.open("#{Rails.root}/#{row[12]}"),
                  :structure2 => File.open("#{Rails.root}/#{row[13]}"),
                  :structure3 => File.open("#{Rails.root}/#{row[14]}"),
                  :structure4 => File.open("#{Rails.root}/#{row[15]}"),
                  :docu50link => row[16],
                  :docu60link => row[17],
                  :category_id => row[18]
                 )

end


require 'csv'

CSV.foreach('db/MODEL_CSV/Category_MODEL.csv') do |row|
    Category.create(:name => row[0])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/Customizable_MODEL.csv') do |row|
    Customizable.create(:name => row[0], 
                        :remark => row[1], 
                        :series_id => row[2])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/Feature_MODEL.csv') do |row|
    Feature.create(:feature => row[0], 
                   :series_id => row[1])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/OptionalAccessory_MODEL.csv') do |row|
    OptionalAccessory.create(:name => row[0], 
                             :series_id => row[1])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/SpecSheet_MODEL.csv') do |row|
    SpecSheet.create(:s_bore => row[0],
                     :d_bore => row[1], 
                     :ref => row[2], 
                     :name => row[3], 
                     :kW => row[4], 
                     :Q1 => row[5], 
                     :H1 => row[6], 
                     :Q2 => row[7], 
                     :H2 => row[8], 
                     :Q3 => row[9], 
                     :H3 => row[10], 
                     :stage => row[11], 
                     :rotary => row[12], 
                     :starting_pressure => row[13], 
                     :adjustable_pressure_range => row[14], 
                     :noise => row[15], 
                     :power_factor => row[16], 
                     :max_pressure => row[17], 
                     :Hz => row[18], 
                     :series_id => row[19])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/StandardAccessory_MODEL.csv') do |row|
    StandardAccessory.create(:name => row[0],
                             :remark => row[1],
                             :series_id => row[2])
end




require 'csv'
CSV.foreach('db/MODEL_CSV/StandardSpec_MODEL.csv') do |row|
    StandardSpec.create(:item => row[0],
                        :content => row[1],
                        :series_id => row[2])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/Structure_MODEL.csv') do |row|
    Structure.create(:ref => row[0],
                     :part_name => row[1],
                     :material => row[2],
                     :remark => row[3],
                     :num => row[4],
                     :variation => row[5],
                     :series_id => row[6])

end