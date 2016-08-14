Rails.application.routes.draw do
  devise_for :users

  resources :contacts do
    resources :messages
  end

  root to: "contacts#index", only: [:index]
end
