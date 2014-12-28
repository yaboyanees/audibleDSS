json.array!(@team_has_os) do |team_has_o|
  json.extract! team_has_o, :id, :team_id, :oPlay_id
  json.url team_has_o_url(team_has_o, format: :json)
end
