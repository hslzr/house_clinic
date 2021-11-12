class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def create
    @patient = Patient.new(username: params["patient"]["username"],
                          age: params["patient"]["age"])

    if @patient.save
      redirect_to patients_path
    else
      redirect_to patients_new_path
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])

    @patient.update(username: params["patient"]["username"],
                    age: params["patient"]["age"])

    redirect_to patient_path(@patient)
  end

  def destroy
    @patient = Patient.find(params[:id])

    @patient.destroy

    redirect_to patients_path
  end
end
