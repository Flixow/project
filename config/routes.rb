Rails.application.routes.draw do

  resources :templates
  devise_for :users

  get 'reg' => "pages#register", :as => "user_root"

  root 'pages#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/emails'
  end
  
  get '/admin', to: "admin#index"

    namespace :admin do
      resources :categories
      resources :posts
      resources :pages
      resources :users
      resources :groups
      resources :mailings
      resources :templates, param: :name
      get 'mailings/deliver/:id', to: 'mailings#deliver', as: 'mailing_deliver'
      get 'tags/:tag', to: 'posts#index', as: :tag
    end


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

end
