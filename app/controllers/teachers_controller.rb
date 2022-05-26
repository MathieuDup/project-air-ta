class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @user = current_user
    @teacher = Teacher.new(teacher_params)
    @teacher.user = @user
    if @teacher.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher.user, notice: 'Teacher was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @teacher.destroy
    redirect_to user_path(@teacher.user), notice: "Teacher was successfully destroyed."
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :location, :language, :availability, :price, :photo)
  end
end
