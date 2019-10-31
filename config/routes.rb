Rails.application.routes.draw do
  get 'city/show'
  resources :gossip do
  	resources :comment
  end
  
  resources :author
  resources :welcome, only: [:index, :show]
  resources :contact, only: [:index]
  resources :team, only: [:index]
  resources :city, except: [:destroy] 
  root 'welcome#index'
  
  resources :sign_up, only: [:new]
  resources :users, only: [:create] 
  #resources :log_in 
  resources :log_in, only: [:new]
  resources :log_out, only: [:destroy] 
  post '/log_in', to: 'log_in#new', as:'log_in'
  #get ‘/signup’ => ‘users#new’
  #post ‘/users’ => ‘users#create

  #“new” will be for your signup page view, 
  #and the“create” action will store the user’s information in your database.
end
