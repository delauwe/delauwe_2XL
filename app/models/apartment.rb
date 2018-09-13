class Apartment < ApplicationRecord
   mount_uploader :photo, PhotoUploader
   has_many :rooms
   has_many :photos

  translates :location, :nature, :description

end
