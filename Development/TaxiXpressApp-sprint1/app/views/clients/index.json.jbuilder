json.array!(@clients) do |client|
  json.extract! client, :id, :id_number, :user_id, :first_name, :last_name, :mobile_phone
  json.url client_url(client, format: :json)
end
