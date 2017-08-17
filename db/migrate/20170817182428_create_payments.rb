class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :amount
      t.text :description

      t.timestamps
    end
  end
end
