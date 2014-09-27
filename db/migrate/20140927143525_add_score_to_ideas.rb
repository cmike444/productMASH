class AddScoreToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :score, :integer
    add_index :ideas, :score
  end
end
