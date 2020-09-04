class CoursesController < ApplicationController

  def show
    courses = Course.all
    render json: courses
  end

  def create
    course = Course.create!(course_params)
    respond_with_json_message("Successfully created course #{course.id}", :created)
  end

  private
    def course_params
      params.permit(:name, :professor)
    end
end
