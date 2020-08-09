Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/up', to: 'utils#up'
  resources :courses, only: %i[index show create] do
    resources :rooms, only: %i[index show]
  end

end
