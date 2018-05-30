class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :status
      t.integer :kind
      t.string :agency
      t.string :account
      t.string :bank
      t.string :cpf

      t.timestamps
    end
  end
end
