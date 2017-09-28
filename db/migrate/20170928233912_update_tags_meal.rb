class UpdateTagsMeal < ActiveRecord::Migration[5.1]
  def change
    remove_column(:tags, :meal, :integer)
    add_column(:tags, :meal, :string)
  end
end
