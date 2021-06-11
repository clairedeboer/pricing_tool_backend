class Photo < ApplicationRecord
  belongs_to :bag
  has_one_attached :featured_image
end
