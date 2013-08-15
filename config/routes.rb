GXSchedules::Application.routes.draw do

  devise_for :users, path: 'admin'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  scope :format => true, :constraints => { :format => 'json' } do
    get '/clubs', to: "clubs#index", defaults: { format: 'json' }
    get '/categories', to: 'categories#index', defaults: { format: 'json' }
    get '/tracks', to: 'tracks#index', defaults: { format: 'json' }
  end
  
  resources :tracks, only: [ :show ]
  resources :categories, only: [ :show ]
  resources :gx_classes, path: "classes", only: [ :index, :show ]

  scope "/:club_id", as: :club, constraints: { club_id: /[A-Z]{2,3}/ } do
    resources :gx_classes, path: "classes", only: [ :index  ]
    resources :studios, :instructors, only: [ :index, :show ]
    get "/", to: "clubs#show"
  end
  
  scope :admin do
    resources :gx_classes, path: "classes", except: [ :show, :index ]
    get '/classes/:id', to: redirect('/classes/%{id}')
    get '/classes', to: redirect('/classes')
    resources :clubs, except: [ :show, :index ]
    scope "/:club_id", as: :club, constraints: { club_id: /[A-Z]{2,3}/ } do
      get "/", to: "club#show"
      resources :gx_class_sets, path: "class_sets", except: [ :index ]
      resources :studios, :instructors
      resources :users
    end
    resources :tracks, :categories
    get "/", to: "admin#index"
  end

  # You can have the root of your site routed with "root"
  root 'clubs#index'

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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
