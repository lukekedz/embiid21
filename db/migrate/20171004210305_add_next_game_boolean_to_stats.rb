class AddNextGameBooleanToStats < ActiveRecord::Migration[5.0]
  def change
    add_column :stats, :next_game?, :boolean
  end
end
