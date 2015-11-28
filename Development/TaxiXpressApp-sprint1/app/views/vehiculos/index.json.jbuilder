json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :IdVehiculo, :Placa, :FechaVenceSoat, :FechaVenceRevTec
  json.url vehiculo_url(vehiculo, format: :json)
end
