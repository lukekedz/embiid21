class AddVideoIdToStats < ActiveRecord::Migration[5.0]
  def change
    add_column :stats, :video_id, :string
  end
end
