class AddProjectIds < ActiveRecord::Migration
  def change
  	add_column :ideas, :project_id, :integer
  end
end
