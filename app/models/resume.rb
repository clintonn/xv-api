class Resume < ApplicationRecord
  has_many :works
  has_many :skills
  has_many :projects
end
