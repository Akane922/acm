Rails.application.routes.draw do
  devise_for :veterinarians
  
  
  root 'posts#index'
  resources :veterinarians, only: [:index, :show]
  resources :posts
end



  # get '/veterinarians', to: 'veterinarians#index' # 獣医師一覧ページ 
  # get '/veterinarians/:id', to: 'veterinarians#show' # ユーザー詳細ページ作るときに入れる