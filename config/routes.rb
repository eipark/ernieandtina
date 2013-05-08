Ernieandtina::Application.routes.draw do
  post "rsvp/respond"
  post "rsvp/complete"

  #root :to => "application#home"
  match 'home' => "application#home"
  match 'story' => "application#story"
  match 'guestbook' => "guests#guestbook"
  match 'rsvp' => "rsvp#rsvp"
  match 'photos' => redirect("https://www.facebook.com/media/set/?set=a.4893203731568.1073741825.1342020184&type=1&l=1d43ebb0f9"), :as => :photos
  match 'logistics' => "application#logistics"
  match 'venue' => "application#venue"
  match 'registry' => "application#registry"
  match 'address' => redirect("https://docs.google.com/spreadsheet/embeddedform?formkey=dDlva1B0RmlsNzJrODFuZG53M2FrMEE6MQ")
  match 'savethedate' => "savethedate.html"

  root :to => "application#home"

  namespace :admin do
    resources :guests
  end


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
