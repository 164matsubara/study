# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Work.create(bldg_name: "Hotel Erdelhuh", bldg_picture: open("#{Rails.root}/db/picture/img01.jpg"), bldg_place: "Hokkaido")
Work.create(bldg_name: "Hakodate city central libraly", bldg_picture: open("#{Rails.root}/db/picture/img02.jpg"), bldg_place: "Hokkaido")
Work.create(bldg_name: "Aomori prefectural general sports park", bldg_picture: open("#{Rails.root}/db/picture/img03.jpg"), bldg_place: "Aomori")
Work.create(bldg_name: "Akita prefectural baseball stadium", bldg_picture: open("#{Rails.root}/db/picture/img04.jpg"), bldg_place: "Akita")
Work.create(bldg_name: "Ibaraki prefectural school for disable children", bldg_picture: open("#{Rails.root}/db/picture/img05.jpg"), bldg_place: "Ibaraki")
Work.create(bldg_name: "Kasamatsu sports park indoor swimming pool", bldg_picture: open("#{Rails.root}/db/picture/img06.jpg"), bldg_place: "Ibaraki")
Work.create(bldg_name: "Niigata prefectural Shibata hospital", bldg_picture: open("#{Rails.root}/db/picture/img07.jpg"), bldg_place: "Niigata")
Work.create(bldg_name: "Saitama public school lodging facility", bldg_picture: open("#{Rails.root}/db/picture/img08.jpg"), bldg_place: "Saitama")
Work.create(bldg_name: "Radiation tower", bldg_picture: open("#{Rails.root}/db/picture/img09.jpg"), bldg_place: "Tokyo")
Work.create(bldg_name: "Yurakucho Itocia", bldg_picture: open("#{Rails.root}/db/picture/img10.jpg"), bldg_place: "Tokyo")
Work.create(bldg_name: "Akasaka Biz tower", bldg_picture: open("#{Rails.root}/db/picture/img11.jpg"), bldg_place: "Tokyo")
Work.create(bldg_name: "Haneda Tokyo international air port Second terminal", bldg_picture: open("#{Rails.root}/db/picture/img12.jpg"), bldg_place: "Tokyo")
Work.create(bldg_name: "Governmental new art museum", bldg_picture: open("#{Rails.root}/db/picture/img13.jpg"), bldg_place: "Tokyo")
Work.create(bldg_name: "Fuji zerox R&D center", bldg_picture: open("#{Rails.root}/db/picture/img14.jpg"), bldg_place: "Kanagawa")
Work.create(bldg_name: "Kawasaki Fujiko F Fujio museum", bldg_picture: open("#{Rails.root}/db/picture/img15.jpg"), bldg_place: "Kanagawa")
Work.create(bldg_name: "NTT docomo Tokai Shizuoka bldg.", bldg_picture: open("#{Rails.root}/db/picture/img16.jpg"), bldg_place: "Shizuoka")
Work.create(bldg_name: "Midland squre", bldg_picture: open("#{Rails.root}/db/picture/img17.jpg"), bldg_place: "Aichi")
Work.create(bldg_name: "WINC aichi", bldg_picture: open("#{Rails.root}/db/picture/img18.jpg"), bldg_place: "Aichi")
Work.create(bldg_name: "Spiral towers", bldg_picture: open("#{Rails.root}/db/picture/img19.jpg"), bldg_place: "Aichi")
Work.create(bldg_name: "Mazac art plaza", bldg_picture: open("#{Rails.root}/db/picture/img20.jpg"), bldg_place: "Aichi")
Work.create(bldg_name: "Chubu international air port", bldg_picture: open("#{Rails.root}/db/picture/img21.jpg"), bldg_place: "Aichi")
Work.create(bldg_name: "Wing Wing Takaoka", bldg_picture: open("#{Rails.root}/db/picture/img22.jpg"), bldg_place: "Toyama")
Work.create(bldg_name: "Kyoto Aquarena", bldg_picture: open("#{Rails.root}/db/picture/img23.jpg"), bldg_place: "Kyoto")
Work.create(bldg_name: "Kyoto city governmental fire-fighting operation center", bldg_picture: open("#{Rails.root}/db/picture/img24.jpg"), bldg_place: "Kyoto")
Work.create(bldg_name: "ABENO HARUKAS", bldg_picture: open("#{Rails.root}/db/picture/img25.jpg"), bldg_place: "Osaka")
Work.create(bldg_name: "HONMACHI garden city", bldg_picture: open("#{Rails.root}/db/picture/img26.jpg"), bldg_place: "Osaka")



require 'csv'

CSV.foreach('db/MODEL_CSV/Category_MODEL.csv') do |row|
    Category.create(:product_category => row[0])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/Customizable_MODEL.csv') do |row|
    Customizable.create(:name => row[0], :remark => row[1], :series_name => row[2])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/Feature_MODEL.csv') do |row|
    Feature.create(:feature => row[0], :series_name => row[1])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/OptionalAccessory_MODEL.csv') do |row|
    OptionalAccessory.create(:name => row[0], :series_name => row[1])
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
                    :series_name => row[19])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/StandardAccessory_MODEL.csv') do |row|
    StandardAccessory.create(:name => row[0],
                    :remark => row[1],
                    :series_name => row[2])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/StandardSpec_MODEL.csv') do |row|
    StandardSpec.create(:item => row[0],
                    :content => row[1],
                    :series_name => row[2])
end

require 'csv'
CSV.foreach('db/MODEL_CSV/Structure_MODEL.csv') do |row|
    Structure.create(:ref => row[0],
                    :part_name => row[1],
                    :material => row[2],
                    :remark => row[3],
                    :num => row[4],
                    :variation => row[5],
                    :series_name => row[6])

end