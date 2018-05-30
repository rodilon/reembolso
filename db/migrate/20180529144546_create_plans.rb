class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :description
      t.float :price
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
