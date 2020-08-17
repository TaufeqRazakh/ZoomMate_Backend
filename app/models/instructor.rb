class Instructor < ApplicationRecord
  belongs_to :user

  has_many :registers
  has_many :courses, through: :registers
end
