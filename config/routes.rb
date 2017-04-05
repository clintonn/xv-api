Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      post '/login' => 'sessions#create'
      post '/logout' => 'sessions#destroy'
    end
  end

end
