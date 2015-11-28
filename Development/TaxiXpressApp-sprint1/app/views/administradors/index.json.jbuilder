json.array!(@administradors) do |administrador|
  json.extract! administrador, :id, :DNI, :user_id, :Nombres, :ApellidoPaterno, :ApellidoMaterno
  json.url administrador_url(administrador, format: :json)
end
