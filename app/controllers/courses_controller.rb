# frozen_string_literal: true

class CoursesController < ApplicationController
  before_action :set_course, only: [:show]

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
end
