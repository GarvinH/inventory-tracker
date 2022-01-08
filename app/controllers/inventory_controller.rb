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
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def confirm_destroy
    @item = Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def item_params
      params[:item][:unit_price] = (params[:item][:unit_price].to_f * 100).round() # stored as an int, but we receive a decimal
      params[:item][:sell_price] = (params[:item][:sell_price].to_f * 100).round() # stored as an int, but we receive a decimal
      params.require(:item).permit(:name, :description, :stock_avail, :unit_price, :stock_sold, :sell_price)
    end
end
