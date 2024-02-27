Rails.application.routes.draw do

  resources :bank_slips

  root "bank_slips#index"
end
