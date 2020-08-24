# frozen_string_literal: true

class RoomsController < ApplicationController
  def index
    rooms = Room.all
    render json: rooms
  end

  def create
    course = Course.find(:course_id)
    course.rooms.create!(room_params)
    respond_with_json_message("Succesfully created #{room.id} for #{course.name}", :created)
  end

  private
    def room_params
      params.require(:room).permit(:course_id, :notice_board, :i_cal)
    end
end
