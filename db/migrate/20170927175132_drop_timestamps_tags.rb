class DropTimestampsTags < ActiveRecord::Migration[5.1]
  def change
    remove_column(:tags, :created_at)
    remove_column(:tagss, :updated_at)
  end
end
