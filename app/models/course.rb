# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :rooms
  has_many :signups
  has_many :users, through: :signups
  
end
