class Register < ApplicationRecord
  belongs_to :courses
  belongs_to :instructors
end
