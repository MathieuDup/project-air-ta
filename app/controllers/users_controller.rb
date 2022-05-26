class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @appointments = Appointment.where(user_id: current_user.id)
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
end
