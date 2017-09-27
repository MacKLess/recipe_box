class DropTimestampsRecipes < ActiveRecord::Migration[5.1]
  def change
    remove_column(:recipes, :created_at)
    remove_column(:recipes, :updated_at)
  end
end
