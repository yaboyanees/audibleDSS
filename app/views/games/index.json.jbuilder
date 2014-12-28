json.array!(@games) do |game|
  json.extract! game, :id, :teamHasO_id, :teamHasD_id, :qtr, :clock, :down, :yds_togo, :side, :yd_line, :ball_pos, :pass_dist, :pass_dir, :run_type, :run_loc, :run_dir, :result, :score_diff
  json.url game_url(game, format: :json)
end
