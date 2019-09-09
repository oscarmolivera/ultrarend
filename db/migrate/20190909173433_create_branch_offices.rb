class CreateBranchOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :branch_offices do |t|
      t.string :name
      t.string :acronym
      t.belongs_to :company

      t.timestamps
    end
  end
end
