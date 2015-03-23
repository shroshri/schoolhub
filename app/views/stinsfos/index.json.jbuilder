json.array!(@stinsfos) do |stinsfo|
  json.extract! stinsfo, :id, :name, :place
  json.url stinsfo_url(stinsfo, format: :json)
end
