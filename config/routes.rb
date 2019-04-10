Rails.application.routes.draw do
  root 'posts#index'
  resources :admins
  resources :admin_sessions, only: [:new, :create, :destroy]
  get 'login' => 'admin_sessions#new'
  get 'logout' => 'admin_sessions#destroy'
  resources :admins, only: [:edit, :update]
  resources :posts, except: [:update, :edit]
  resources :posts do
    member do
      get :confirm
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
