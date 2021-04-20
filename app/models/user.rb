class User < ApplicationRecord
  has_many :items
  has_many :photos, through: :items
end
