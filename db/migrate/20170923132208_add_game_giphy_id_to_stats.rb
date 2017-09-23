class AddGameGiphyIdToStats < ActiveRecord::Migration[5.0]
  def change
    add_column :stats, :game_giphy_id, :string
  end
end
