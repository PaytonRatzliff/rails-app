json.array!(@favorite_games) do |favorite_game|
  json.extract! favorite_game, :id, :Game, :hours_played
  json.url favorite_game_url(favorite_game, format: :json)
end
