class Apartment < ApplicationRecord
   extend FriendlyId
   friendly_id :name, use: :slugged
   mount_uploader :photo, PhotoUploader
   has_many :rooms
   has_many :photos

  translates :location, :nature, :description

  def photos_by_type
    self.photos.order(id: :asc)
  end

   def self.any_available?
    self.find do |apartment|
      apartment.availability <= Date.today
    end
  end
end
