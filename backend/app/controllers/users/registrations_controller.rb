class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  include RackSessionsFix
  private

  def respond_with(current_user, _opts = {})
    if resource.persisted?
      render json: {
        status: {code: 200, message: 'Signed up successfully.',
        data: {user: UserSerializer.new(current_user).serializable_hash[:data][:attributes]}
        }
      }, status: :ok
    else
      render json: {
        status: {message: "User couldn't be created successfully. #{current_user.errors.full_messages.to_sentence}"}
      }, status: :unprocessable_entity
    end
  end

  protected

  def sign_up_params
    params.require(:user).permit(:email, :password, :name) # Adicione quaisquer outros parâmetros necessários para o cadastro do usuário
  end
end