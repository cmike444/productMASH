class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company, :string
    add_column :users, :avatar, :string
    add_column :users, :plan_id, :integer, default: 1
    add_column :users, :provider_id, :string
    add_column :users, :uid, :string
    add_column :users, :location, :string
  end
end
