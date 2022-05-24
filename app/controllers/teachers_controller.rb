class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    redirect_to teacher_path(@teacher)
  end

  def teacher_params
    params.require(:teacher).permit(:name, :location, :language, :availability, :price)
  end
end
