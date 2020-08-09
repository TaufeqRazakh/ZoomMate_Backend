# frozen_string_literal: true

class CoursesController < ApplicationController
  before_action :set_course, only: [:show]

  def create
    course = Course.new(course_params)
    if course.save
      render :show, status: :created, location: course
    else
      render json: course.errors, status: :unprocessable_entity
      # TODO: Test this
    end
  end

  def index
    courses = Course.all
    render json: courses
  end

  def show
    render json: @course
  end

  # TODO: Remaining rest actions

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :professor, :notice_board)
  end
end
