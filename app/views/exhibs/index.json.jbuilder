json.array!(@exhibs) do |exhib|
  json.extract! exhib, :id
  json.url exhib_url(exhib, format: :json)
end
