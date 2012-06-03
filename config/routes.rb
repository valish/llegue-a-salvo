InvisibleVictims::Application.routes.draw do

  resources :reported_dangers

  resources :announcements

  authenticated :user do
    root :to => 'home#home'
    match 'announcements/new', :to => 'announcements#new'
    get 'announcements' => 'announcements'
    #post 'updates' => 'updates'
  end
  root :to => "home#index"
  devise_for :users
  resources :users do
    resources :announcements 
  end
  
end
