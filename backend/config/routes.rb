Rails.application.routes.draw do
  resources :health_profiles, :medical_records 
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    users: 'users'
  }
end
