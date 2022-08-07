Rails.application.routes.draw do
  resources :courses
  
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"} , path: "accounts"
  
  scope controller: :static_pages do
    get :about
    get :contact
    get :index
    get :privacy
    get :course
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#index"
end


