json.array!(@service_states) do |service_state|
  json.extract! service_state, :id, :description
  json.url service_state_url(service_state, format: :json)
end
