require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = set_student
  end

  def activate
    @student = set_student
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
    @student.save
    #binding.pry
    redirect_to self.show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
