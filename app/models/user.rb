class User < ApplicationRecord

  has_many :resumes
  has_many :works, through: :resumes
  has_many :skills, through: :resumes
  has_many :projects, through: :resumes
  has_many :educations, through: :resumes
  has_secure_password

end
