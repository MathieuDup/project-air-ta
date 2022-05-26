class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    @appointment = Teacher.find(params[:teacher_id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
    redirect_to teachers_path(@appointment.teacher)
  end

  def appointment_params
    params.require(:appointment).permit(:date, :location)
  end
end
