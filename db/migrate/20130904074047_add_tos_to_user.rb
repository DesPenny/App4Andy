class AddTosToUser < ActiveRecord::Migration
  def change
    add_column :users, :accepttos, :boolean, :default => false
  end
end
