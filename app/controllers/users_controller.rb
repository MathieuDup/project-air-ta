class UsersController < ApplicationController
  def show
    @teachers = @user.plants
    @teacher = Teacher.new
  end
end
