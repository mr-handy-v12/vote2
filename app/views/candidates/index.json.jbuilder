json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :avatar
  json.url candidate_url(candidate, format: :json)
end
