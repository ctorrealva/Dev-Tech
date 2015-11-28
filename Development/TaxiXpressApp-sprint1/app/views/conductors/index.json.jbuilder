json.array!(@conductors) do |conductor|
  json.extract! conductor, :id, :Licencia, :user_id, :Nombres, :ApellidoPaterno, :ApellidoMaterno, :Clase, :Categoria
  json.url conductor_url(conductor, format: :json)
end
