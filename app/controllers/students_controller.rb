class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    @student = Student.create(strong_params)
    redirect_to student_path(@student)
  end

  private

  def strong_params
    params.require(:student).permit(:first_name, :last_name)
  end

    def set_student
      @student = Student.find(params[:id])
    end
end
