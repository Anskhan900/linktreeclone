Rails.application.routes.draw do
  resources :trees
  get 'home/index'
  get 'home/pricing'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_for :users, controllers: {
   registrations: 'users/registrations'
  }

  root "home#index"

  devise_scope :user do 
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
end
