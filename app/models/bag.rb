class Bag < ApplicationRecord
  belongs_to :user
  has_many :photos
end
