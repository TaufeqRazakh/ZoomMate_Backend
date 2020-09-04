Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/up', to: 'utils#up'
  
  resources :students do
    resources :enrollments
  end
  
  get 'schedule/', to: 'students#schedule' 
  
  resources :students do
    get 'schedule', on: :member
  end

  resources :instructor do
    resources :registers
  end

  resources :courses do
    resources :rooms
  end
  
end
