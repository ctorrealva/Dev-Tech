class Servicio < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :conductor
  belongs_to :vehiculo
  belongs_to :tipopago
  belongs_to :estadoservicio
end
