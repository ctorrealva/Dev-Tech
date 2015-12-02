class Vehicle < ActiveRecord::Base
    #has_many :service
    
    validates :plaque, presence: true, uniqueness: {case_sensitive: false}
    validates :soat_due_date, presence: true
    validates :technical_review_due_date, presence: true
    
end
