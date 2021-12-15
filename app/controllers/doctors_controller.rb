class DoctorsController < ApplicationController
  before_action :authenticate_user!

  def index
      @doctors = Doctor.all
  end

  def new
      @doctor = Doctor.new
  end

  def create
      @doctor = Doctor.new(doctor_params)

      if @doctor.save
          redirect_to doctors_path
      else
          redirect_to new_doctor_path
      end
  end

  def edit
      @doctor = Doctor.find(params[:id])
  end

  def update
      @doctor = Doctor.find(params[:id])
      @doctor.update(doctor_params)

      redirect_to doctor_path(params[:id])
  end

  def show
      @doctor = Doctor.find(params[:id])
  end

  def destroy
      @doctor = Doctor.find(params[:id])
      @doctor.destroy

      redirect_to doctors_path
  end

  def doctor_params
      params.require(:doctor).permit(:name, :license_number)
  end
end
