Rails.application.routes.draw do
  resources :chirps
  resources :birds
  resources :cheerups

	get '/signup' => 'people#new'
	post '/users' => 'people#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
