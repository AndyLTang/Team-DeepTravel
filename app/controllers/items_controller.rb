class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new

  end
  
  def create
    @package = Package.find(params[:package_id])
    @item = @package.items.build(item_params)
    if @item.save
      flash[:success] = "new item created!"
      redirect_to packages
    else
      render 'new'
    end
  end
  
  def destroy
    Item.find(params[:id]).destroy
    flash[:success] = "item deleted"
    redirect_to packages_path
  end
  
  private

    def item_params
      params.require(:item).permit(:name, :price, :time, :info, :user_id, :item_id, :package_id)
    end
end
