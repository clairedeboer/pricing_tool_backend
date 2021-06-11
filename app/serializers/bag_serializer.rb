class BagSerializer < ActiveModel::Serializer
  attributes :id, :designer, :style, :size, :material, :color, :condition, :retail_price, :resale_price, :featured_image
end