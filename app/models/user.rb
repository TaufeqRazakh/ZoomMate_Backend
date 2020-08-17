# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :students, class_name: "User",
                      foreign_key: "instructor_id"
  belongs_to :instructor, class_name: "User", optional: true                      

  has_many :signups
  has_many :courses, through: :signups

end
