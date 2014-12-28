json.array!(@o_plays) do |o_play|
  json.extract! o_play, :id, :name, :picture, :formation, :play_type
  json.url o_play_url(o_play, format: :json)
end
