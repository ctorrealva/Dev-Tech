class ServiceState < ActiveRecord::Base
    #has_many :service

    validates :description, presence: true, uniqueness: {case_sensitive: false} 

end
