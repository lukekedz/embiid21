class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.string :year,       null: false
      t.string :gp,         null: false
      t.string :mins,       null: false
      t.string :pts,        null: false
      t.string :fgm_fga,    null: false
      t.string :fg_prct,    null: false
      t.string :three_m_a,  null: false
      t.string :three_prct, null: false
      t.string :ftm_fta,    null: false
      t.string :ft_prct,    null: false
      t.string :reb,        null: false
      t.string :ast,        null: false
      t.string :blk,        null: false
      t.string :stl,        null: false

      t.timestamps null: false
    end
  end
end
