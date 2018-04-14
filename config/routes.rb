Rails.application.routes.draw do
  root 'extweets#index'
  resources :extweets
end
