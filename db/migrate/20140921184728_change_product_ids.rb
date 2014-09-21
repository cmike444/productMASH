class ChangeProductIds < ActiveRecord::Migration
  remove_column :ideas, :product_id
end
