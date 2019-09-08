module Admin
  
  def self.admin_types
    ['SysAdmin']
  end

  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_user!
    before_action :authenticate_admin

    def authenticate_admin
      unless Admin.admin_types.include?(current_user.try(:type))
        flash[:alert]= "Debe ser usuario Admin para ingresar."
        redirect_to (dashboards_index_path)
     end
    end

  end

end
