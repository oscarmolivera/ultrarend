class DashboardsController < ApplicationController
  def index
    authenticate_user!
  end
end
