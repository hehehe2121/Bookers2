class AddUserIdToBookers < ActiveRecord::Migration[5.2]
  def change
    add_column :bookers, :user_id, :integer
  end
end
