class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
        t.string :game_date,   null: false
        t.string :opp,         null: false
        t.string :score,       null: false
        t.string :min,         null: false
        t.string :fgm_fga,     null: false
        t.string :fg_prct,     null: false
        t.string :three_pm_pa, null: false
        t.string :three_prct,  null: false
        t.string :ftm_fta,     null: false
        t.string :ft_prct,     null: false
        t.string :reb,         null: false
        t.string :ast,         null: false
        t.string :blk,         null: false
        t.string :stl,         null: false
        t.string :pts,         null: false

        t.timestamps null: false
    end
  end
end
