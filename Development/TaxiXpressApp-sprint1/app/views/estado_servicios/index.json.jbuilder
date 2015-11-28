json.array!(@estado_servicios) do |estado_servicio|
  json.extract! estado_servicio, :id, :IdEstadoServicio, :Descripcion
  json.url estado_servicio_url(estado_servicio, format: :json)
end
