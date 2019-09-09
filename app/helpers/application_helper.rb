module ApplicationHelper
  def trabajador?
    true if current_user.type == 'Trabajador'
  end

  def admin?
    true if current_user.type == 'SysAdmin'
  end
end
