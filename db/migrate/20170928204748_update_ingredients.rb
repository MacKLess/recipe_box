class UpdateIngredients < ActiveRecord::Migration[5.1]
  def change
    rename_column(:ingredients, :name, :food)
  end
end
