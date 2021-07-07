class Education < ApplicationRecord
  belongs_to :user
end


education = Education.find(1)
user = education.user
