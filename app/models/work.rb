class Work < ApplicationRecord
  belongs_to :resume
  belongs_to :user, through: :resume
end
