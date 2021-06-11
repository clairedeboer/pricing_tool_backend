class PhotoSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :bag_id, :featured_image

  def file
    if object.featured_image.attached?
      {
        url: rails_blob_url(object.featured_image)
      }
    end
  end
end
