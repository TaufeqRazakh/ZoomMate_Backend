class EnrollmentsController < ApplicationController
  before_action :set_course, only: [:create]

  def index
    enrollments = Enrollment.all
    render json: enrollments
  end

  def create
    student = Student.find(params[:student_id])
    course = Course.find(params[:course_id])
    Enrollment.create!(student: student, course: course)
    respond_with_json_message("Successfully enrolled student #{student.id} into #{course.name}",
                              :created)
  end

  private
    def course_params
      params.require(:enrollment).permit(:student_id, :course_id)
    end

    def set_course
      @course = Course.find(params[:course_id])
    end
end
