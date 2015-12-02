class Parameter < ActiveRecord::Base

    validates :description, presence: true, uniqueness: {case_sensitive: false}
    validates :value, presence: true
end
