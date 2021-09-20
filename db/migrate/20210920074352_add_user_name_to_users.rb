class AddUserNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :name, :string
    add_column :users, :introduction, :text
  end
end
