Rails.application.routes.draw do
  root 'books#index'
  resources :books do

    collection do
      get 'search'
    end

  end
end
