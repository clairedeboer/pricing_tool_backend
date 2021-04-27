class BagsController < ApplicationController
  def index
    bags = Bag.all
    render json: bags
  end

  def show
    bag = Bag.find(params[:id])
    render json: bag
  end

  def create
    bag = Bag.create(bag_params)
    render json: bag
  end

  private
  def bag_params
    params.permit(:user_id, :designer, :style, :size, :material, :color, :condition, :retail_price, :resale_value)
  end
end
