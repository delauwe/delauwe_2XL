class Apartment < ApplicationRecord
   mount_uploader :photo, PhotoUploader
   has_many :rooms
   has_many :photos

  translates :location, :category, :description

end
