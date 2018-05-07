Rails.application.routes.draw do
  
  resources :pins do
    member do
      put "like", to: "pins#upvote"
    end
  end
  
  devise_for :users
  
  get 'home/index'
  
  root 'pins#index'

  get 'home/about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
