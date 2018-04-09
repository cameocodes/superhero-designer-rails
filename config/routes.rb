Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#homepage'
  # resources :items, only [:new, :show]

  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  post '/items/new', to: 'items#create'
  get '/items/:id', to: 'items#show'
  get '/items/:id/edit', to: 'items#edit'
  patch '/items/:id/edit', to: 'items#update'
  delete '/items/:id', to: 'items#destroy'

end



# get /items
# post /items
# get /items/new
# get /items/:id
# get /items/:id/edit
# put/patch /items/:id
# delete /items/:id