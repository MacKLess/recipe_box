class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table(:cards) do |t|
      t.column(:recipe_id, :integer)
      t.column(:tag_id, :integer)
      t.column(:rating, :integer)

      t.timestamps
    end
  end
end
