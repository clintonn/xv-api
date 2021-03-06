Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :resumes
      post '/login' => 'sessions#create'
      post '/logout' => 'sessions#destroy'
      post '/auth' => 'sessions#auth'
    end
  end

end
