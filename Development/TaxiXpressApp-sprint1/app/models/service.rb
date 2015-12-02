class Service < ActiveRecord::Base
  belongs_to :client
  belongs_to :driver
  belongs_to :vehicle
  belongs_to :payment_type
  belongs_to :service_state

  validates :client, presence: true
  validates :driver, presence: true
  validates :vehicle, presence: true
  validates :payment_type, presence: true
  validates :source, presence: true
  validates :destination, presence: true
  validates :date_hour, presence: true
  validates :service_state, presence: true
  validates :score, presence: true, numericality: { greater_than_or_equal_to: 0, lower_than_or_equal_to: 10 }
  validates :comment, presence: true
  validates :amount, presence: true

end
