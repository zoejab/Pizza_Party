Rails.application.routes.draw do

  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"

  root to: "pizza_places#index"

  resources :favorite_pizza_places, only: [:create, :destroy]
  resources :users
  

  resources :pizza_places do
  resources :comments
  end

  post '/pizza_places/:pizza_place_id/comments/:id/edit' => "comments#update"


  # member do
  #   put 'add_song'
  #   put 'remove_song'

 #
 #  Prefix Verb   URI Pattern                      Controller#Action
 #            users GET    /users(.:format)                 users#index
 #                  POST   /users(.:format)                 users#create
 #         new_user GET    /users/new(.:format)             users#new
 #        edit_user GET    /users/:id/edit(.:format)        users#edit
 #             user GET    /users/:id(.:format)             users#show
 #                  PATCH  /users/:id(.:format)             users#update
 #                  PUT    /users/:id(.:format)             users#update
 #                  DELETE /users/:id(.:format)             users#destroy
 #            login GET    /login(.:format)                 sessions#new
 #                  POST   /login(.:format)                 sessions#create
 #           logout DELETE /logout(.:format)                sessions#destroy
 #             root GET    /                                pizzaplaces#index
 #     pizza_places GET    /pizza_places(.:format)          pizza_places#index
 #                  POST   /pizza_places(.:format)          pizza_places#create
 #  new_pizza_place GET    /pizza_places/new(.:format)      pizza_places#new
 # edit_pizza_place GET    /pizza_places/:id/edit(.:format) pizza_places#edit
 #      pizza_place GET    /pizza_places/:id(.:format)      pizza_places#show
 #                  PATCH  /pizza_places/:id(.:format)      pizza_places#update
 #                  PUT    /pizza_places/:id(.:format)      pizza_places#update
 #                  DELETE /pizza_places/:id(.:format)      pizza_places#destroy
end
