class PatientsController < ApplicationController
  before_action :set_patient, only: %i[ show edit update destroy ]

  # GET /patients or /patients.json
  def index
    @patients = Patient.all
  end

  # GET /patients/1 or /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients or /patients.json
  def create
    @patient = Patient.new(patient_params)

    redirect_to @patient, notice: "Patient was successfully created."
  end

  # PATCH/PUT /patients/1 or /patients/1.json
  def update
    if @patient.update(patient_params)
      redirect_to @patient, notice: "Patient was successfully updated."
    end
  end

  # DELETE /patients/1 or /patients/1.json
  def destroy
    @patient.destroy

    redirect_to patients_url, notice: "Patient was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:username, :age)
    end
end
