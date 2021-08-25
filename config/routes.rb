Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users

  namespace :api do
    namespace :v1 do
      get 'current_user', to: 'current_user#index'
      get 'private/test'
    end
  end

  namespace :api do
    namespace :v1 do
      namespace :users do
        devise_for :users, path: '', path_names: {
          sign_in: 'login',
          sign_out: 'logout',
          registration: 'signup'
        },
        controllers: {
          sessions: 'api/v1/users/sessions',
          registrations: 'api/v1/users/registrations'
        }
      end
    end
  end


end
