class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.new(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    if @student.save
      redirect_to @student
    else
      render "new"
    end
    # byebug
  end

  def show
    @student = Student.find(params[:id])
  end

end
