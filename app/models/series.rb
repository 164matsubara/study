class Series < ActiveRecord::Base
    
    mount_uploader :photo, :chart1, :chart2, :chart3, :chart4, :chart5, :chart6, :chart7, :structure1, :structure2, :structure3, :structure4, WorksPictureUploader
end
