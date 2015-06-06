Rails.application.routes.draw do
  
  get "recipes/" => "recipes#index"
  #this is the welcome page
  get "recipes/" => "recipes#welcome"
  #this is going to create a new recipe
  get "recipes/new" => "recipes#new", as: :new_recipe
  #this is the link to create
  post "recipes/" => "recipes#create"
  #this is the root route to show the recipes
  get "recipes/:id" => "recipes#show", as: :recipe
  #this is the route to edit each specific recipe which can only be accesed from indiviudal recipe s
  get "recipes/:id/edit" => "recipes#edit", as: :edit_recipe
  patch "recipes/:id" => "recipes#update"
  delete "recipes/:id" => "recipes#destroy"
  

  #this is setting the route to users index
  get 'users/' => "users#index"
  #route to return out sign up form
  get 'users/new' => 'users#new', as: :new_user
  #a route to post our user from to
  post 'users/' => 'users#create'


  #this is going to display the new form
  get 'sessions/new' => 'sessions#new', as: :new_session
  #this will create the new session (the login post)
  post 'sessions/new' => 'sessions#create', as: :create_session
  #this will log out the current session
  get "/sessions/destroy" => "sessions#destroy", as: :destroy_session

  # You can have the root of your site routed with "root"
   root 'recipes#index'

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

  resources :recipes
  resources :photos

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
