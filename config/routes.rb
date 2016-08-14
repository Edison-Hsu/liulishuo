Rails.application.routes.draw do
  resources :messages
  devise_for :admins
end
