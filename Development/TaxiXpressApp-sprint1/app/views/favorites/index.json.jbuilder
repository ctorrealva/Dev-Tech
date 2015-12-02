json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :name, :client_id, :source, :destination
  json.url favorite_url(favorite, format: :json)
end
