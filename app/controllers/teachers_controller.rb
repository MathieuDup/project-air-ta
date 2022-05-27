class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      sql_query = " \
        teachers.name @@ :query \
        OR teachers.location @@ :query \
        OR languages.name @@ :query \
      "
      @teachers = Teacher.joins(:languages).where(sql_query, query: "%#{params[:query]}%")
                         .uniq
    else
      @teachers = Teacher.all
    end

    @markers = @teachers.geocoded.map do |teacher|
     {
      lat: teacher.latitude,
      lng: teacher.longitude,
      info_window: render_to_string(partial: "info_window", locals: { teacher: teacher })
     }
    end
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @user = current_user
    @teacher = Teacher.new(teacher_params)
    @teacher.user = @user
    languages = params[:teacher][:language_ids]
    languages.map! { |l| Language.find(l) }
    @teacher.languages = languages
    if @teacher.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.new
    @languages = @teacher.languages
  end

  def edit
  end

  def update
    languages = params[:teacher][:language_ids]
    languages.map! { |l| Language.find(l) }
    @teacher.languages = languages
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
    params.require(:teacher).permit(:name, :location, :description, :photo, :price, :user_id, :language_ids)
  end
end
