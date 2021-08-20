Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :bookmarks, only: [:destory]
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
end