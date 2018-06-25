Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	# get 'bookers/show' => 'bookers#show'

    root :to => 'bookers#top'
    get '/bookers/about' => 'bookers#about'
    # get '/top' => '', as: 'bookers_top'
  	#post '/bookers' => 'bookers#create'
  	#get '/bookers/index' => 'bookers#index'
  	#get '/bookers/:id' => 'bookers#show', as: 'booker'
  	#patch '/bookers/:id' => 'bookers#update', as: 'update_booker'
  	#get '/bookers/:id/edit' => 'bookers#edit', as: 'edit_booker'
     resources :bookers

     resources :users, only: [:show, :edit, :update, :create, :index]
end
