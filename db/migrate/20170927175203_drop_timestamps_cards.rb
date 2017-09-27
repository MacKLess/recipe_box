class DropTimestampsCards < ActiveRecord::Migration[5.1]
  def change
    remove_column(:cards, :created_at)
    remove_column(:cards, :updated_at)
  end
end
