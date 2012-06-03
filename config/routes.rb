InvisibleVictims::Application.routes.draw do
  resources :updates

  authenticated :user do
    root :to => 'home#home'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
