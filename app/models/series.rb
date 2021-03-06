class Series < ActiveRecord::Base
    belongs_to :categories
    self.primary_key = 'name'
    mount_uploader :photo, 
                   :chart1,
                   :chart2,
                   :chart3,
                   :chart4,
                   :chart5,
                   :chart6,
                   :chart7,
                   :structure1,
                   :structure2,
                   :structure3,
                   :structure4, WorksPictureUploader
end
