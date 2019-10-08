class AddUsersRefToRendicions < ActiveRecord::Migration[5.2]
  def change
    add_reference :rendicions, :user, foreign_key: true
    add_column :rendicions, :jefe_area_id, :string, :limit => 50
  end
end
