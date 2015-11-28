json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :DNI, :user_id, :Nombres, :ApellidoPaterno, :ApellidoMaterno, :Celular
  json.url cliente_url(cliente, format: :json)
end
