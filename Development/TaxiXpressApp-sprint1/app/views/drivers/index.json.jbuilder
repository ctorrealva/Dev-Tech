json.array!(@drivers) do |driver|
  json.extract! driver, :id, :license, :user_id, :first_name, :last_name, :class, :category
  json.url driver_url(driver, format: :json)
end
