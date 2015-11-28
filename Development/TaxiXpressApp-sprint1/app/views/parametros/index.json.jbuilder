json.array!(@parametros) do |parametro|
  json.extract! parametro, :id, :IdParametro, :Placa, :FechaVenceSoat, :FechaVenceRevTec
  json.url parametro_url(parametro, format: :json)
end
