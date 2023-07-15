Rails.application.routes.draw do
  devise_for :veterinarians, controllers: {
    registrations: 'veterinarians/registrations'
  }

  root 'posts#index'
  resources :veterinarians, only: [:index, :show, :update]
  resources :posts do
    resources :motto, only: [:create, :destroy]
  end
end

