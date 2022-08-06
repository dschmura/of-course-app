Rails.application.routes.draw do
  
  
  
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"} 
  
  resources :courses
  resources :accounts do
  end


  
  scope controller: :static_pages do
    get :about
    get :contact
    get :index
    get :privacy
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#index"
end


