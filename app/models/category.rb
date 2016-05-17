class Category < ActiveRecord::Base
    has_many :series
    self.primary_key = 'name'
end
