#app/config/routes.rb

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index, :create, :destroy, :update]
    end
  end
end