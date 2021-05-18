class User < ApplicationRecord
  # has_secure_password

  has_many :bags
  has_many :photos, through: :bags
end
