class PatientsController < ApplicationController
  def index
    @patients = Patient.all;

    render json: @patients
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient
  end

  def new
    @patient = Patient.new

    render json: @patient
  end

  def create
    @patient = Patient.new(user_params)
    if user.save
        render json: @patient, status: :created
    else
        render json: { errors: user.errors.full_messages}, status: :unprocessable
    end     
  end

  def edit
    @patient = Patient.find(params[:id])

    render json: @patient
  end

  def update
    @patient = Patient.find(params[:id])

    if @patient.update(user_params)
      render json: @patient
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.required(:patient).permit(:name, :email, :phone)
  end

end