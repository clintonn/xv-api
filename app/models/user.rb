class User < ApplicationRecord

  has_many :resumes
  has_secure_password

end
