class InventoryController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to root_path
    else
      render :new, status: unprocessable_entity
    end
  end

  private 
    def item_params
      params.require(:item).permit(:name, :description, :stock_avail, :unit_price, :stock_sold, :sell_price)
    end
end
