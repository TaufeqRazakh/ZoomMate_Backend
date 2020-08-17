# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :rooms

  has_many :enrollments
  has_many :students, through: :enrollments

  has_many :registers
  has_many :instructors, through: :registers
end
