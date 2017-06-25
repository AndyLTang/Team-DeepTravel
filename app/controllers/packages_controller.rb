class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end

  def show
    @package = Package.find(params[:id])
  end

  def new
    @package = Package.new

  end
  
  def create
    @user = User.find(params[:user_id])
    @package = @user.packages.build(package_params)
    if @package.save
      flash[:success] = "new Package created!"
      redirect_to users_url
    else
      render 'new'
    end
  end
  
  def destroy
    Package.find(params[:id]).destroy
    flash[:success] = "package deleted"
    redirect_to users_url
  end
  
  private

    def package_params
      params.require(:package).permit(:name, :price, :time, :user_id, :item_id)
    end
end
