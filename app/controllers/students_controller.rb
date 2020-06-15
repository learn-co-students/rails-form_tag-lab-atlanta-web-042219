class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    redirect_to student_path(Student.create(student_params))
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
