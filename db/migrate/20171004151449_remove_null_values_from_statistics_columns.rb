class RemoveNullValuesFromStatisticsColumns < ActiveRecord::Migration[5.0]
  def change
    change_column :stats, :score,      :string, :null => true
    change_column :stats, :min,        :string, :null => true
    change_column :stats, :fgm_fga,    :string, :null => true
    change_column :stats, :fg_prct,    :string, :null => true
    change_column :stats, :three_m_a,  :string, :null => true
    change_column :stats, :three_prct, :string, :null => true
    change_column :stats, :ftm_fta,    :string, :null => true
    change_column :stats, :ft_prct,    :string, :null => true
    change_column :stats, :reb,        :string, :null => true
    change_column :stats, :ast,        :string, :null => true
    change_column :stats, :blk,        :string, :null => true
    change_column :stats, :stl,        :string, :null => true
    change_column :stats, :pts,        :string, :null => true
  end
end
