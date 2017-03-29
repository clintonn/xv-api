class User < ApplicationRecord

  has_secure_password
  has_many :resumes
  validates :username, :first_name, :last_name, :password, presence: true
  

end
