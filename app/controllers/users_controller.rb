class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    @teachers = @user.teachers
    @teacher = Teacher.new
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :photo)
  end
end
