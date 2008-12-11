ActionController::Routing::Routes.draw do |map|
  map.from_plugin :community_engine

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
