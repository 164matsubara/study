class Work < ActiveRecord::Base
    
    mount_uploader :bldg_picture, WorksPictureUploader
end
