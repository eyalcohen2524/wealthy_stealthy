class PackagesController < ApplicationController
  before_action :set_package, only: %i[show edit update]

  def index
    @packages = Package.all
  end

  def show
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(package_params)
    if @package.save
      redirect_to package_path(@package)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @package.save
      redirect_to package_path(@package)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_package
    @package = Package.find(params[:id])
  end

  def package_params
    params.require(:package).permit(:price, :description, :content, :name)
  end
end
