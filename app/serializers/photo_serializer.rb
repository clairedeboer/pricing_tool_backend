class PhotoSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :bag_id, :file

  def file
    if object.file.attached?
      {
        url: rails_blob_url(object.file)
      }
    end
  end
end
