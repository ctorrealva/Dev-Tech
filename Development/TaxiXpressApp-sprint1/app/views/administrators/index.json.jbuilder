json.array!(@administrators) do |administrator|
  json.extract! administrator, :id, :id_number, :user_id, :first_name, :last_name
  json.url administrator_url(administrator, format: :json)
end
