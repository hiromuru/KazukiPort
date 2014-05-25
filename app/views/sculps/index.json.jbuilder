json.array!(@sculps) do |sculp|
  json.extract! sculp, :id
  json.url sculp_url(sculp, format: :json)
end
