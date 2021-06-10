class BagsController < ApplicationController
  #if user is admin only

  def index
    if (@current_user.is_admin == true)
      bags = Bag.all
      render json: bags
    else
      render json: @current_user.bags
    end
  end

  def show
    bag = Bag.find(params[:id])
    render json: bag
  end

  def create
    bag = Bag.create(bag_params)
    file = Photo.create(photo_params)
    render json: bag
  end

  def update
    bag=Bag.find(params[:id])
    bag.update(bag_params)
    render json: bag
  end

  private
  def bag_params
    params.permit(:user_id, :designer, :style, :size, :material, :color, :condition, :retail_price, :resale_value)
  end

  def photo_params
    params.permit(:bag_id, :file)
  end
end
