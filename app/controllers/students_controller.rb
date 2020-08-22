class StudentsController < ApplicationController
  before_action :set_user, only: [:create]

  def index
    students = User.all
    render json: students
  end

  def create
    Student.create!(user_id: @student.id)
    render json: {message: "Successfully created user"}, status: :ok
  end

  private
    def student_params
      params.permit(:email)
    end

    def set_user
      @student = User.find_by email: params[:email]
    end

end
