class DashboardsPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end

    def show?
      return true
    end

  end
end
