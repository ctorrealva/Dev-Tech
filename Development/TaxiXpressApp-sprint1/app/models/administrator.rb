class Administrator < ActiveRecord::Base
  belongs_to :user

  validates :id_number, presence: true, uniqueness: {case_sensitive: false} 
  validates :user, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

end
