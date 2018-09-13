class Photo < ApplicationRecord
  belongs_to :apartment
  belongs_to :room, optional: true
end
