json.array!(@services) do |service|
  json.extract! service, :id, :client_id, :driver_id, :vehicle_id, :payment_type_id, :source, :destination, :date_hour, :service_state_id, :score, :comment, :amount
  json.url service_url(service, format: :json)
end
