class CreateUsernames < ActiveRecord::Migration
  def change
    create_table :usernames do |t|
      t.string :email
      t.string :password_digest
      t.string :token_digest

      t.timestamps null: false
    end
    add_index :usernames, :email
  end
end
