json.array!(@favoritos) do |favorito|
  json.extract! favorito, :id, :IdFavorito, :cliente_id, :Nombres, :Origen, :Destino
  json.url favorito_url(favorito, format: :json)
end
