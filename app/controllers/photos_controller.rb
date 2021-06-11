class PhotosController < ApplicationController
  def index
    photos = Photo.all
    render json: photos
  end

  def create
    photo = Photo.create(photo_params)
    render json: photo
  end

  private
  def photo_params
    params.permit(:bag_id, :featured_image)
  end
end
