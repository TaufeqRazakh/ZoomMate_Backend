class RoomsController < ApplicationController
  before_action :set_course, only: [:index, :show]
  
  def index
    rooms = @course.rooms
    render json: rooms
  end

  def show
    room = @course.rooms.find(params[:id])
    render json: room
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end
end
