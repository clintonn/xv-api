class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    change_column :users, :email_confirmed, :boolean, :default => false
  end
end
