json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :plaque, :soat_due_date, :technical_review_due_date
  json.url vehicle_url(vehicle, format: :json)
end
