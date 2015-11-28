json.array!(@tipo_pagos) do |tipo_pago|
  json.extract! tipo_pago, :id, :CodigoTipoPago, :Descripcion
  json.url tipo_pago_url(tipo_pago, format: :json)
end
