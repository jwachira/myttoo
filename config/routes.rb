ActionController::Routing::Routes.draw do |map|
  map.resources :password_resets
  map.resource :account, :controller => "users"
  map.resources :property_groups do |property_group|
		property_group.resources :property_sites
  end
  

  map.resource :user_session
  map.root :controller => "special", :action => "home"
  map.login  'login',  :controller => "user_sessions", :action => "new"
  map.logout 'logout', :controller => "user_sessions", :action => "destroy"
  map.resources :users, :member => {:delete => :get} do |user|
    user.resource :activation, :controller => "users/activation", :member => {:delete => :get}
    user.resource :password, :controller => "users/password"
  end
end
