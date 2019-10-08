class AddTypeIndexTousers < ActiveRecord::Migration[5.2]
  def change
    add_index :users, [:type, :email]
  end
end
