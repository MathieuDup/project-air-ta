class TeachersController < ApplicationController
 before_action :set_teacher
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    
  def show
    # @teacher = Teacher.find(params[:id])
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
