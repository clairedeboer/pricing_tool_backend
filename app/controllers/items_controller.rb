class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items
  end

  def show
    item = Item.find(params[:id])
    render json: item
  end

  def create
    item = Item.create(item_params)
    render json: item
  end

  private
  def item_params
    params.permit(:user_id, :designer, :style, :size, :material, :condition, :retail_price, :resale_price)
  end
end
