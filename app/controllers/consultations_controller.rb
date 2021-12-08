class ConsultationsController < ApplicationController
  before_action :set_consultation, only: %i[ show edit update destroy ]

  # GET /consultations or /consultations.json
  def index
    @consultations = Consultation.all
  end

  # GET /consultations/1 or /consultations/1.json
  def show
  end

  # GET /consultations/new
  def new
    @consultation = Consultation.new
  end

  # GET /consultations/1/edit
  def edit
  end

  # POST /consultations or /consultations.json
  def create
    @consultation = Consultation.new(consultation_params)

    respond_to do |format|
      if @consultation.save
        format.html { redirect_to @consultation, notice: "Consultation was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultations/1 or /consultations/1.json
  def update
    respond_to do |format|
      if @consultation.update(consultation_params)
        format.html { redirect_to @consultation, notice: "Consultation was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultations/1 or /consultations/1.json
  def destroy
    @consultation.destroy
    respond_to do |format|
      format.html { redirect_to consultations_url, notice: "Consultation was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultation
      @consultation = Consultation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultation_params
      params.require(:consultation)
        .permit(:doctor_id, :patient_id,
               :start_time, :summary, :notes)
    end
end
