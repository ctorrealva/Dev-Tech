class Service < ActiveRecord::Base
  belongs_to :client
  belongs_to :driver
  belongs_to :vehicle
  belongs_to :payment_type
  belongs_to :service_state
end
