Rails.application.routes.draw do
  get 'sessions/new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :friends
  get '/search', to: 'friends#search'
  get '/requests', to: 'friends#requests'
  get '/truefriends', to: 'friends#truefriends'
  post '/login', to: 'pages#login'
  get '/login', to: 'pages#login_box'
  get '/register', to: 'pages#register'
  post '/register', to: 'pages#new_register'
  get '/logout', to: 'pages#logout'
  put '/profile', to: 'pages#profile'
  post '/friends/:id/addvalue', to: 'values#add'
  get '/friends/:id/values', to: 'values#show'
  patch '/friends/:id/add_back', to: 'friends#add_back'

  # Example resource route with options:
    # resources :friends do
    #   member do
    #     get 'login'
    #     post 'toggle'
    #   end

    #   collection do
    #     get 'sold'
    #   end
    # end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
