Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"#root to:はサイトのルートページを決める記述.
  #↑にかえました。get 'homes/top'
  get'/home/about', to: 'homes#about', as:'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
