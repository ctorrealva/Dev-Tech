class Favorite < ActiveRecord::Base
  belongs_to :client

    validates :name, presence: true
    validates :client, presence: true
    validates :source, presence: true
    validates :destination, presence: true

end
