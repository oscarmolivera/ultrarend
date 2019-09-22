module ApplicationHelper
  def trabajador?
    true if current_user.type == 'Trabajador'
  end

  def auxcontable?
    true if current_user.type == 'AuxContable'
  end

  def jefearea?
    true if current_user.type == 'JefeArea'
  end

  def jefecontable?
    true if current_user.type == 'JefeContable'
  end

  def sysadmin?
    true if current_user.type == 'SysAdmin'
  end

  def branch_acronym (branch_id)
   branch_id.present? ? BranchOffice.find_by(id: branch_id).acronym.to_s :  'SYS'
  end

  def deparment_acronym (department_id)
    department_id.present? ? Department.find_by(id: department_id).acronym.to_s : 'Admin'
  end
end
