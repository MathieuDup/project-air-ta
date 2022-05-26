class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    @teacher = Teacher.find(params[:teacher_id])
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.user_id = current_user.id
    @appointment.teacher_id = @teacher.id
    @appointment.save
    redirect_to user_path(@appointment.user_id)
  end

  def appointment_params
    params.require(:appointment).permit(:date, :location)
  end
end
