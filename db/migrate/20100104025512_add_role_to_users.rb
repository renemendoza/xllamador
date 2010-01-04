class AddRoleToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :string
    add_column :users, :roles_mask, :integer
  end

  def self.down
    remove_column :users, :roles_mask
    remove_column :users, :role
  end
end
