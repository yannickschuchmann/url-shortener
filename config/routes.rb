Tiny::Application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root :to => 'sites#index'

  namespace :member do
   # Directs /admin/products/* to Admin::ProductsController
   # (app/controllers/admin/products_controller.rb)
   get '/urls/:key' => 'urls#show', as: 'url'
   resources :urls
  end

  # Example of regular route:
  get '/url' => 'urls#new'
  get '/:key' => 'urls#show'
  resources :urls
  resources :sites

  #devise_for :users, :skip => [:registrations]
  #as :user do
  #  get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
  #  put 'users/:id' => 'devise/registrations#update', :as => 'user_registration'
  #end
  resources :users

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
