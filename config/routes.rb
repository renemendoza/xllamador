ActionController::Routing::Routes.draw do |map|
  map.root :controller => "voip_devices"
  map.login 'login', :controller => 'user_sessions', :action => 'new'
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'
  map.resources :voip_devices
  map.resources :users, :user_sessions
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
