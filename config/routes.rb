Rails.application.routes.draw do
  resources :planes
  resources :sessions
  resources :users
  resources :flights

  get '/flights/:origin/:destination' => 'flights#getflights'

end
