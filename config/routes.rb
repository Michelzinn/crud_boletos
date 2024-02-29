Rails.application.routes.draw do

  resources :bank_billets

  root 'bank_billets#index'
end
