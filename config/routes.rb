Rails.application.routes.draw do
  get 'reservation/top' , to: 'rooms#top'
  get 'user/login' ,to:'users#login'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
