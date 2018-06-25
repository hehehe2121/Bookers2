class AddUserBodyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_body, :string
  end
end
