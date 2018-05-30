class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.string :description
      t.date :date
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
