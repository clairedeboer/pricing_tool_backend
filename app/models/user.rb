class User < ApplicationRecord
  has_many :bags
  has_many :photos, through: :bags
end
