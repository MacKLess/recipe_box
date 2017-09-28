class UpdateCardsTagId < ActiveRecord::Migration[5.1]
  def change
    remove_column(:cards, :tags_id, :integer)
    add_column(:cards, :tag_id, :integer)
  end
end
