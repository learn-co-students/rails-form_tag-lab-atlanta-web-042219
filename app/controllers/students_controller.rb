class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new 
    @student = Student.new
    render :new
  end

  def create 
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    if @student.save 
      redirect_to student_path(@student)
    else 
      render :new 
    end 

  end

end
