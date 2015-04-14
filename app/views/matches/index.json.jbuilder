json.array!(@matches) do |match|
  json.extract! match, :id, :team1, :team2, :venue, :start_time, :date
  json.url match_url(match, format: :json)
end
