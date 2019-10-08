class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.date :expense_date
      t.string :provider_utr
      t.string :document_type
      t.string :document_num
      t.string :concept
      t.string :observation
      t.float :net_cost
      t.float :excent_amount
      t.float :iva_tax
      t.float :other_tax

      t.timestamps
    end
  end
end
