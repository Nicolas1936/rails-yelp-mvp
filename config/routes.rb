Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end
