class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end
  
  before_action :set_teacher
  def show
    # @teacher = Teacher.find(params[:id])
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
