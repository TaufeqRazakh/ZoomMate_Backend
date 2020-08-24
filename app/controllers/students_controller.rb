class StudentsController < ApplicationController
  before_action :get_matching_user, only: [:create]

  def index
    students = Student.all
    render json: students
  end

  def create
    student Student.create!(user_id: @user.id)
    respond_with_json_message("Successfully created student with id: #{student.id}", :created)
  end


  private
    def student_params
      params.require(:student).permit(:email)
    end

    def get_matching_user
      @user = User.find_by email: params[:email]
    end

end
