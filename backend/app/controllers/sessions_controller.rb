class SessionsController < Devise::SessionsController
  include RackSessionsFix
  Devise::RegistrationsController
    respond_to :json
end