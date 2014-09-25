class CreateMashes < ActiveRecord::Migration
  def change
    create_table :mashes do |t|
      t.integer :durability
      t.integer :efficiency
      t.integer :assembly
      t.integer :proportion
      t.integer :scale
      t.integer :semantics
      t.integer :lifespan
      t.integer :recycle
      t.integer :process
      t.integer :learning_curve
      t.integer :barriers
      t.integer :safety
      t.integer :pleasure
      t.integer :technology
      t.integer :function
      t.integer :parts
      t.integer :service
      t.integer :access
      t.integer :precedent
      t.integer :appropriate
      t.integer :branding
      t.integer :graphics
      t.integer :user_id
      t.integer :idea_id
      t.integer :total_mash
      t.integer :total_mechanics
      t.integer :total_aesthetics
      t.integer :total_sustainability
      t.integer :total_human_factors
      t.string :link
      t.string :name
      t.string :download_link

      t.timestamps
    end
  end
end
