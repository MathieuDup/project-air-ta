class UsersController < ApplicationController

  def show
    authorize current_user
    @teachers = current_user.teachers
    # @teacher = Teacher.new
  end
end
