Rails.application.routes.draw do
  devise_for :users

  # , controllers: {
    # sessions: 'users/sessions',
    # registrations: 'users/registrations'
  # }

  # ここにルートパス設定
  root 'home#home'
  get  "home/about"  => "home#index"
  resources :books, only: [:index, :create, :show, :destroy, :update, :edit]
  resources :users, only: [:index, :create, :show, :update, :edit ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
