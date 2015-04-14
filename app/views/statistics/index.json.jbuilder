json.array!(@statistics) do |statistic|
  json.extract! statistic, :id, :runs, :wickets
  json.url statistic_url(statistic, format: :json)
end
