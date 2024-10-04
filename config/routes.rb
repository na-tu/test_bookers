Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/edit'
  get 'user/update'
  root to: "homes#top"#root to:はサイトのルートページを決める記述.
  #↑にかえました。get 'homes/top'
  get'/home/about', to: 'homes#about', as:'about'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
