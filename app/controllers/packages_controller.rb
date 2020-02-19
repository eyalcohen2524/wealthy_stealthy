class PackagesController < ApplicationController
  before_action :set_package, only: %i[show edit update destroy]

  def index
    @packages = policy_scope(Package)
  end

  def show
    # @package = Package.find_by(params[:id])
    authorize @package
  end


  def create
    @package = Package.new(package_params)
    @package.user = current_user
    authorize @package
    if @package.save
      redirect_to package_path(@package)
      # authorize @package, :show?
    else
      redirect_to me_path
    end
  end

  def edit
    authorize @package
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
