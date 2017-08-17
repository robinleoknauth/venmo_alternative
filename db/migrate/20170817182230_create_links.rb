class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
