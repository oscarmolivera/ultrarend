module DashboardsHelper
  def user_navbar_banner
    "#{current_user.last_name} 
     #{current_user.first_name} 
     ( #{branch_acronym(current_user.branch_offices_id)} 
     #{deparment_acronym(current_user.departments_id)} ) - 
     #{current_user.email}
     "
  end
end
