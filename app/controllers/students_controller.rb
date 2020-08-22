class StudentsController < ApplicationController
  before_action :set_user, only: [:create]

  def index
    students = User.all
    render json: students
  end

  def create
    Student.create!(user_id: @student.id)
    respond_with_json_message("Successfully created student", :created)
  end


  private
    def student_params
      params.permit(:email)
    end

    def set_user
      @student = User.find_by email: params[:email]
    end

end
