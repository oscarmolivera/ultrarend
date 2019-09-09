class AddBranchOfficeRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :branch_offices, foreign_key: true
  end
end
