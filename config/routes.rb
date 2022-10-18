Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
