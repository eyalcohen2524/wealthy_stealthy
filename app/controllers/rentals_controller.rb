class RentalsController < ApplicationController
  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    if @rental.save
      redirect_to me_path
    else
      redirect_to me_path
    end
  end

  def update
  end

  def package_params
    params.require(:package).permit(:price, :description, :content, :name)
  end
end
