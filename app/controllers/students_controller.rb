class StudentsController < ApplicationController
  before_action :get_matching_user, only: [:create]
  before_action :get_matching_student, only: [:schedule]
  
  def index
    students = Student.all
    render json: students
  end

  def create
    student = Student.create!(user_id: @user.id)
    response.headers['student-id'] = student.id
    respond_with_json_message("Successfully created student with id: #{student.id}",
                              :created)
  end
  
  # Returns the student-id inside header from the user email(uid) 
  def show
  end
  
  # Returns the ical's a student is registered for
  def schedule
    puts @student.inspect
    courses = @student.courses
    rooms = courses.flat_map { |course| course.rooms }
    schedules = rooms.flat_map{ |room| room.i_cal}
    render json: {i_cal: schedules}
  end

  private

    def get_matching_user
      @user = User.find_by email: params[:email]
    end
    
    def get_matching_student
      @student = Student.find_by id: params[:id]
    end
    
end
