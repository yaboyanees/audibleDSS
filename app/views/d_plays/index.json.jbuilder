json.array!(@d_plays) do |d_play|
  json.extract! d_play, :id, :name, :picture, :formation, :play_type
  json.url d_play_url(d_play, format: :json)
end
