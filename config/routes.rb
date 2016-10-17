Rails.application.routes.draw do
  root to: 'general_users#index', as: 'index'

  get 'general_users/index'

  # get "/albums", to: "albums#index",   as: :albums
  # post "/albums", to: "albums#create"
  # get "/albums/:id", to: "albums#show",    as: :album
  # patch "/albums/:id", to: "albums#update"
  # put "/albums/:id", to: "albums#update"
  # delete "/albums/:id", to: "albums#destroy"
  # get "/albums/new", to: "albums#new",     as: :new_album
  # get "/albums/:id/edit", to: "albums#edit",    as: :edit_album

  resources :albums
  put 'albums/:id/upvote' => 'albums#upvote', as: 'upvotealbum'

  # get 'books/index'
  #
  # get 'books/show'
  #
  # get 'books/create'
  #
  # get 'books/new'
  #
  # get 'books/edit'
  #
  # get 'books/update'
  #
  # get 'books/destroy'

  resources :books
  put 'books/:id/upvote' => 'books#upvote', as: 'upvotebook'


  # get 'movies/index'
  #
  # get 'movies/show'
  #
  # get 'movies/create'
  #
  # get 'movies/new'
  #
  # get 'movies/edit'
  #
  # get 'movies/update'
  #
  # get 'movies/destroy'

  resources :movies
  put 'movies/:id/upvote' => 'movies#upvote', as: 'upvotemovie'


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
