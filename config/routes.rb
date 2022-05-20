Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: %i[index new show create] do
    resources :bookmarks, only: %i[new create] do
    end
  end

  resources :bookmarks, only: %i[destroy] do
  end

end
