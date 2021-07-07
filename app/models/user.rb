class User < ApplicationRecord
  has_many :educations
  has_many :experiences
  has_many :curiculars

end
