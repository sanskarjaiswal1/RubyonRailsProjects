class CreateAccounts < ActiveRecord::Migration[8.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :user_id
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
    add_index :accounts, :user_id
  end
end
