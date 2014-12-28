json.array!(@team_has_ds) do |team_has_d|
  json.extract! team_has_d, :id, :team_id, :dPlay_id
  json.url team_has_d_url(team_has_d, format: :json)
end
