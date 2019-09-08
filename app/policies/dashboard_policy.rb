class DashboardPolicy < ApplicationPolicy
  def show
    return true if current_user
  end
end