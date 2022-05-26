class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    @teachers = @user.teachers
    @teacher = Teacher.new
  end

  def create
    @users = Appointment.new(appointment_params)
    @user.save
    redirect_to appointments_path(@appointment)
  end
  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :photo)
  end
end
