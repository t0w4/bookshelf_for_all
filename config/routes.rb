Rails.application.routes.draw do
  devise_for :users
  resources  :users, only: %i[index show create update]
  root 'books#index'
  resources :books do
    collection do
      get 'search'
    end
  end
  resources :user_books, only: %i[show destroy] do
    collection do
      post 'add'
    end
  end
end
