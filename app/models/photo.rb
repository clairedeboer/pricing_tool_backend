class Photo < ApplicationRecord
  belongs_to :bag
  has_one_attached :file
end
