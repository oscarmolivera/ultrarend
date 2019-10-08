class CreateRendicions < ActiveRecord::Migration[5.2]
  def change
    create_table :rendicions do |t|
      t.string :glosa_id
      t.string :description
      t.date :request_date
      t.string :status_id
      t.date :aproved_date
      t.float :request_amount
      t.float :approved_amount
      t.string :resolution
      t.string :observations

      t.timestamps
    end
  end
end
