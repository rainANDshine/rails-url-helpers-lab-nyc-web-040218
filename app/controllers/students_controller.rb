class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = self.set_student
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
