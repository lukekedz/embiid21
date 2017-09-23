class AddPlayerGiphyIdToStats < ActiveRecord::Migration[5.0]
  def change
    add_column :stats, :player_giphy_id, :string
  end
end
