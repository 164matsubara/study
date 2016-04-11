class Video < ActiveRecord::Base
  belongs_to :user
  mount_uploader :video, VideoUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum:140 }
  validates :video, presence: true
  validate :video_size

   private
    
   def video_size
      if video.size > 100.megabytes
         errors.add(:video, "should be less than 100MB")
      end
   end
end