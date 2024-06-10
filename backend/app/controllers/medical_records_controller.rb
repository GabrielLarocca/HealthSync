class MedicalRecordsController < ApplicationController
  before_action :authenticate_user!, unless: :devise_controller?

  def index
    @medical_records = MedicalRecord.all;

    render json: @medical_records
  end

  def show
    @medical_record = MedicalRecord.find(params[:id])
    render json: @medical_record
  end

  def new
    @medical_record = MedicalRecord.new

    render json: @medical_record
  end

  def create
    puts "User signed in? #{user_signed_in?}"
    @current_user = current_user
    @medical_record = MedicalRecord.new({**medical_record_params, "user_id" => @current_user.id})
    if @medical_record.save
        render json: @medical_record, status: :created
    else
        render json: { errors: @medical_record.errors.full_messages}, status: 422
    end     
  end

  def edit
    @medical_record = MedicalRecord.find(params[:id])

    render json: @medical_record
  end

  def update
    @medical_record = MedicalRecord.find(params[:id])

    if @medical_record.update(medical_record_params)
      render json: @medical_record
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @medical_record = MedicalRecord.find(params[:id])
    @medical_record.destroy 

    render json: "Sucessso"
  end
  
  private

  def medical_record_params
    params.required(:medical_record).permit(:patient_id, :description, :institution, :doctor_name)
  end
end
