Rails.application.routes.draw do

  #devise_for :users
  devise_for :users, controllers: { sessions: "users/sessions" }
  
  root to: 'application#main'

  get '/organizations/id/:name', to: 'organizations#show', as: 'org_id' 
  get '/organizations/show/:id', to: 'organizations#show', as: 'org_show'

  get '/organizations/showAll', to: 'organizations#showAll', as: 'org_showAll'
  post '/organizations/create', to: 'organizations#create', as: 'org_create'

  get '/user/show/:id', to: 'users#show', as: 'user_show'
  
  get '/events/id/:name', to: 'events#show', as: 'ev_id' 
  get '/events/show/:id', to: 'events#show', as: 'ev_showAll'
	get '/events/showAll', to: 'events#showAll', as: 'ev_show'
  post '/events/create', to: 'events#create', as: 'ev_create'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

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
