class AddRendicionsRefToExpenses < ActiveRecord::Migration[5.2]
  def change
    add_reference :expenses, :rendicions, foreign_key: true
  end
end
