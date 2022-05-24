class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end
  
  before_action :set_teacher

  def show
  end

  def edit
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
