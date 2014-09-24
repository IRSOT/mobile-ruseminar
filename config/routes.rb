Rails.application.routes.draw do
  
  # devise_for :admins

  # devise_scope :admin do
  #   get '/login' => "devise/sessions#new"
  #   get '/logout' => "devise/sessions#destroy"
  # end
  devise_for :admins, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :seminars do
    collection { post :import }
  end

  resources :seminar_programs do
    collection { post :import }
  end

  resources :seminar_sections

  resources :seminar_types

  # get 'admin_pages/index'
  get 'admin' => 'admin_pages#index'

  resources :lectors do
    collection { post :import }
  end

  get 'contacts' => 'static_pages#contacts'

  get 'allseminarstype' => 'static_pages#allseminarstype'
  get 'lastupdate' => 'static_pages#lastupdate'
  
  root 'static_pages#home'


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
