class UsersController < ApplicationController

  def show
    @users = User.find(params[:id])

    respond_to do |appointment|
      appointment.html#show
    end
  end
end
