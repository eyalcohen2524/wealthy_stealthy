class DashboardsController < ApplicationController

  def show
    @packages = Package.all
    @package = Package.new
  end


end
