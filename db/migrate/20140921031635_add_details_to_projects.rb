class AddDetailsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :name, :string
    add_column :projects, :description, :string
    add_column :projects, :private, :boolean
    add_column :projects, :owner_id, :integer
    add_column :projects, :user_id, :integer
    add_column :projects, :image, :string
  end
end
