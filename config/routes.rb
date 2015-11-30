Rails.application.routes.draw do
  resources :books do
    resources :reviews
    get 'page/:page', :action => :index, :on => :collection
  end
  root 'books#index'
end