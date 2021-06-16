class BagSerializer < ActiveModel::Serializer
  attributes :id, :designer, :style, :size, :material, :color, :condition, :retail_price, :resale_value

  has_many :photos, serializer: PhotoSerializer
end