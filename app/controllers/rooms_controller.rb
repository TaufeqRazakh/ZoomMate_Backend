# frozen_string_literal: true

class RoomsController < ApplicationController
  def index
    rooms = Room.all
    render json: rooms
  end

  def create
    course = Course.find(params[:course_id])
    room = course.rooms.create!(notice_board: params[:notice_board], 
                                i_cal: params[:i_cal])
    respond_with_json_message("Succesfully created room #{room.id} for #{course.name}",
                              :created)
  end

  private

    def room_params
      # puts params.inspect
      params.require(:room).permit(:notice_board, :i_cal)
    end
end
