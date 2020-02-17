class PackagesController < ApplicationController
  before_action :set_package, only: %i[show]

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
      redirect_to packages_path
    else
      render :new
    end
  end

  def edit

  end

  def update
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
