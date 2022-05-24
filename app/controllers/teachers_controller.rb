class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[show edit update destroy]

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def edit
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :location, :language, :availability, :price)
  end
end
