class AddCheckToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :check_password, :string
  end
end
