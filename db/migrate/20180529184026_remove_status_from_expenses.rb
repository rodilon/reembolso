class RemoveStatusFromExpenses < ActiveRecord::Migration[5.2]
  def change
    remove_column :expenses, :status, :integer
  end
end
