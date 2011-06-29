ActionController::Routing::Routes.draw do |map|
  map.resources :productos

  map.resources :categorias

  map.resources :paginas


  map.root :paginas 

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
