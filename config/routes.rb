Rails.application.routes.draw do
  devise_for :veterinarians, controllers: {
    registrations: 'veterinarians/registrations'
  }
  devise_for :animal_care_groups, controllers: {
    registrations: 'animal_care_groups/registrations'
  }

  root 'posts#index'
  resources :veterinarians, only: [:index, :show, :update]
  resources :animal_care_groups, only: [:index, :show, :new, :create]

  resources :posts do
    resources :motto, only: [:create, :destroy]
  end
end
