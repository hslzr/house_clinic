class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def show
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to patients_path
    else
      redirect_to new_patient_path
    end
  end

  def edit
  end

  def update
    @patient.update(patient_params)

    redirect_to patient_path(@patient)
  end

  def destroy
    @patient.destroy

    redirect_to patient_path
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:username, :age)
  end
end
