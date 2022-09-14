Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index" except: %i[edit]
  resources :restaurants, only: %i[index new create show destroy update] do
    post :create_review
  end
end
