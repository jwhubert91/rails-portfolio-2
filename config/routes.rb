Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :works, except: [:show]
  get 'work/:id', to: 'works#show', as: 'work_show'
  get 'angular-items', to: 'works#angular'

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
