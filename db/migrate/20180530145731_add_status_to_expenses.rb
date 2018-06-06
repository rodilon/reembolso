class AddStatusToExpenses < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :status, :integer
  end
end
