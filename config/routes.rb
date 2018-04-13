Rails.application.routes.draw do
  root 'extweet#index'
  resources :extweet
end
