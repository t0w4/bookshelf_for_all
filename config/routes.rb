Rails.application.routes.draw do
  devise_for :users
  resources  :users, only: [:index, :show, :create, :update]
  root 'books#index'
  resources  :books do
    collection do
      get 'search'
    end
  end
  resources  :user_books, only: [:show, :destroy] do
    collection do
      post 'add'
    end
  end

end
