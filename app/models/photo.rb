class Photo < ApplicationRecord
  validates :image_url,
            :listing_id,
            presence: true
  belongs_to :listing
end
