Rails.application.routes.draw do
  resources :chirps
  resources :birds
  resources :cheerups

  get '/' => 'session#new'

	# get '/signup' => 'people#new'
	# post '/users' => 'people#create'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  # login/sessions
  get 'users/login'  => 'session#new'
  post 'sessions/create' => 'session#create'
  get 'users/logout' => 'session#destroy'

  # user registration
  get 'register' => 'people#new'
  post 'people/create' => 'people#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
