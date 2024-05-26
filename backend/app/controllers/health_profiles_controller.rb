class HealthProfilesController < ApplicationController
  before_action :authenticate_user!, unless: :devise_controller?

  def index
    @health_profiles = HealthProfile.all;

    render json: @health_profiles
  end

  def show
    @health_profile = HealthProfile.find(params[:id])
    render json: @health_profile
  end

  def new
    @health_profile = HealthProfile.new

    render json: @health_profile
  end

  def create
    puts "User signed in? #{user_signed_in?}"
    @current_user = current_user
    @health_profile = HealthProfile.new({**health_profile_params, "user_id" => @current_user.id})
    if @health_profile.save
        render json: @health_profile, status: :created
    else
        render json: { errors: @health_profile.errors.full_messages}, status: 422
    end     
  end

  def edit
    @health_profile = HealthProfile.find(params[:id])

    render json: @health_profile
  end

  def update
    @health_profile = HealthProfile.find(params[:id])

    if @health_profile.update(health_profile_params)
      render json: @health_profile
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @health_profile = HealthProfile.find(params[:id])
    @health_profile.destroy 

    render json: "Sucessso"
  end
  
  private

  def health_profile_params
    params.required(:health_profile).permit(:name, :birth_date, :gender, :blood_type, :allergise, :weight, :height, :age)
  end
end
