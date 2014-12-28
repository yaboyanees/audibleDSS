class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :teamHasO_id
      t.integer :teamHasD_id
      t.integer :qtr
      t.time :clock
      t.integer :down
      t.integer :yds_togo
      t.string :side
      t.integer :yd_line
      t.string :ball_pos
      t.string :pass_dist
      t.string :pass_dir
      t.string :run_type
      t.string :run_loc
      t.string :run_dir
      t.integer :result
      t.integer :score_diff

      t.timestamps
    end
  end
end
