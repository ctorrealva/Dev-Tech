json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :IdServicio, :cliente_id, :conductor_id, :vehiculo_id, :tipopago_id, :Origen, :Destino, :FechaHora, :estadoservicio_id, :Puntaje, :Comentario, :Monto
  json.url servicio_url(servicio, format: :json)
end
