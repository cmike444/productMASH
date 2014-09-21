class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.integer :avg_score
      t.integer :high_score
      t.integer :low_score
      t.timestamps
    end
  end
end
