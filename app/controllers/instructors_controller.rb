class InstructorsController < ApplicationController
  before_action :get_matching_user, only: [:create]

  def index
    instructors = Instructor.all
    render json: instructors
  end

  def create
    instructor = Instructor.create!(user_id: @user.id)
    respond_with_json_message("Successfully created instructor with id: #{instructor.id}",
                              :created)
  end

  private
    def instructor_params
      params.require(:instructor).permit(:email)
    end

    def get_matching_user
      @user = User.find_by email: params[:email]
    end

end
