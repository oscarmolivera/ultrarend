module ApplicationHelper
  def employee?
    true if current_user.type == 'Empleado'
  end

  def admin?
    true if current_user.type == 'SysAdmin'
  end
end
