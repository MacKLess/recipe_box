class CreateRecipeIngredientTagCard < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:name, :string)
      t.column(:instruction, :string)
    end

    create_table(:cards) do |t|
      t.column(:tags_id, :integer)
      t.column(:recipe_id, :integer)
      t.column(:ratings, :integer)
    end

    create_table(:tags) do |t|
      t.column(:meal, :integer)
    end

    create_table(:ingredients) do |t|
      t.column(:name, :string)
    end
  end
end
