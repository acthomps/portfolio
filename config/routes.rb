Rails.application.routes.draw do
  devise_for :users
  resources :portfols, except: [:show]
  get 'angular-items', to: 'portfols#angular'
  get 'portfol/:id', to: 'portfols#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
  	member do 
  		get :toggle_status
  	end
  end

  root to: 'pages#home'

end