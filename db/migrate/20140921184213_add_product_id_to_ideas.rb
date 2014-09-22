class AddProductIdToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :product_id, :integer
  end
end
