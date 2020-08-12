class UsersController < ApplicationController
  before_action :set_user, only: %i[show courses available_rooms]

  def show
    render json: @user
  end

  def index
    render json: User.all
  end

  def courses
    render json: @user.courses
  end

  def available_rooms
    final_list = {}
    courses = @user.courses
    courses.each do |course|
      final_list[course.name] = course.rooms
    end
    render json: final_list
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
