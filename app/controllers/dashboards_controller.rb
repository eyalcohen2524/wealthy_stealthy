class DashboardsController < ApplicationController

  def show
    @packages = policy_scope(Package)
    @package = Package.new
    @user = current_user
    authorize @package, policy_class: PackagePolicy
  end


end
