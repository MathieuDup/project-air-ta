class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @teachers = @user.teachers
    @appointments = Appointment.where(user_id: current_user.id)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
