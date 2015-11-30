Rails.application.routes.draw do
  resources :reviews
  root 'books#index'
  resources :books do
    get 'page/:page', :action => :index, :on => :collection
  end
end