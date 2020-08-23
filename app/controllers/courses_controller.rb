class CoursesController < ApplicationController

  def show
    courses = Course.all
    render json: courses
  end

  def create
    Course.create!(course_params)
    respond_with_json_message("Successfully created course", :created)
  end

  private
    def course_params
      params.require(:course).permit(:name, :professor)
    end
end
