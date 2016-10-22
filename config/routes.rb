Rails.application.routes.draw do
  root 'books#index'
  resources :books, only: [:index, :show, :destroy] do

    collection do
      get 'search'
    end

  end
end
