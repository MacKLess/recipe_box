class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.text(:ingredient, array: true, default: [])
      t.column(:instruction, :string)

      t.timestamps
    end
  end
end
