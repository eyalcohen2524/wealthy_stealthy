class RentalsController < ApplicationController
  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.package = Package.find(params[:package_id])
    authorize @rental
    if @rental.save
      redirect_to me_path
    else
      redirect_to me_path
    end
  end

  def update
  end

  def rental_params
    params.require(:rental).permit(:rental_date)
  end
end
