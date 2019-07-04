Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users
  root to: 'pages#home'

  resource :profile, only: [:show]
  resources :repositories, only: %i[index show] do
    resources :photos, only: %i[index new create destroy] do
      resources :reviews, only: %i[index new create destroy]
    end
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
